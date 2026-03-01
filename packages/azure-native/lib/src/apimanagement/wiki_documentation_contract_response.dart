// ignore_for_file: unused_element, unnecessary_cast


/// Wiki documentation details.
class WikiDocumentationContractResponse {
  /// Documentation Identifier
  final String? documentationId;

  /// Creates a new [WikiDocumentationContractResponse].
  /// [documentationId] Documentation Identifier
  WikiDocumentationContractResponse({
    this.documentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationId': ?documentationId,
    };
  }

  factory WikiDocumentationContractResponse.fromMap(Map<String, dynamic> map) {
    return WikiDocumentationContractResponse(
      documentationId: map['documentationId'] == null ? null : map['documentationId'] as String,
    );
  }
}

