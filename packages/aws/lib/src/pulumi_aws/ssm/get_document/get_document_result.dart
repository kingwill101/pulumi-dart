// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDocument.
class GetDocumentResult {
  /// ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead.
  final String arn;

  /// The content for the SSM document in JSON or YAML format.
  final String content;
  final String? documentFormat;

  /// The type of the document.
  final String documentType;
  final String? documentVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetDocumentResult({
    required this.arn,
    required this.content,
    this.documentFormat,
    required this.documentType,
    this.documentVersion,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['content'] = content;
    final documentFormatValue = documentFormat;
    if (documentFormatValue != null) {
      map['documentFormat'] = documentFormatValue;
    }
    map['documentType'] = documentType;
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      arn: map['arn'] as String,
      content: map['content'] as String,
      documentFormat: map['documentFormat'] == null
          ? null
          : map['documentFormat'] as String,
      documentType: map['documentType'] as String,
      documentVersion: map['documentVersion'] == null
          ? null
          : map['documentVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
