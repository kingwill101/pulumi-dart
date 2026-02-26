// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFhir.
class GetFhirResult2 {
  /// The HTTP Content-Type header value specifying the content type of the body.
  final String contentType;

  /// The HTTP request/response body as raw binary.
  final String data;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final List<Map<String, String>> extensions;

  GetFhirResult2({
    required this.contentType,
    required this.data,
    required this.extensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['data'] = data;
    map['extensions'] = extensions;
    return map;
  }

  factory GetFhirResult2.fromMap(Map<String, dynamic> map) {
    return GetFhirResult2(
      contentType: map['contentType'] as String,
      data: map['data'] as String,
      extensions: (map['extensions'] as List).cast<Map<String, String>>(),
    );
  }
}
