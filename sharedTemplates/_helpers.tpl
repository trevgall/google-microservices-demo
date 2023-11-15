{{/*Calculate hostname in the form of [name].[namespace][.int?]*/}}
{{- define "ingress.host" -}}
{{ .Values.ingress.env }}{{ .Values.ingress.subenv }}.{{ .Release.Namespace }}.{{ .Values.ingress.env }}
{{- if .Values.ingress.internal -}}
    .int
{{- end -}}
    .{{ .Values.ingress.zoneSuffix }}
{{- end }}