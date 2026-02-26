// ignore_for_file: unused_element, unnecessary_cast

/// Unstructured data linked to this document.
class GoogleCloudDiscoveryengineV1alphaDocumentContent {
  /// The MIME type of the content. Supported types: * `application/pdf` (PDF, only native PDFs are supported for now) * `text/html` (HTML) * `application/vnd.openxmlformats-officedocument.wordprocessingml.document` (DOCX) * `application/vnd.openxmlformats-officedocument.presentationml.presentation` (PPTX) * `text/plain` (TXT) See https://www.iana.org/assignments/media-types/media-types.xhtml.
  final String? mimeType;

  /// The content represented as a stream of bytes. The maximum length is 1,000,000 bytes (1 MB / ~0.95 MiB). Note: As with all `bytes` fields, this field is represented as pure binary in Protocol Buffers and base64-encoded string in JSON. For example, `abc123!?$*&()'-=@~` should be represented as `YWJjMTIzIT8kKiYoKSctPUB+` in JSON. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  final String? rawBytes;

  /// The URI of the content. Only Cloud Storage URIs (e.g. `gs://bucket-name/path/to/file`) are supported. The maximum file size is 100 MB.
  final String? uri;

  GoogleCloudDiscoveryengineV1alphaDocumentContent({
    this.mimeType,
    this.rawBytes,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    final rawBytesValue = rawBytes;
    if (rawBytesValue != null) {
      map['rawBytes'] = rawBytesValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaDocumentContent.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaDocumentContent(
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      rawBytes: map['rawBytes'] == null ? null : map['rawBytes'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
