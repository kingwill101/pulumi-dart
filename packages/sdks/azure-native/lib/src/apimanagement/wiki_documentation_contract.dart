// ignore_for_file: unused_element, unnecessary_cast


/// Wiki documentation details.
class WikiDocumentationContract {
  /// Documentation Identifier
  final String? documentationId;

  /// Creates a new [WikiDocumentationContract].
  /// [documentationId] Documentation Identifier
  WikiDocumentationContract({
    this.documentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationId': ?documentationId,
    };
  }

  factory WikiDocumentationContract.fromMap(Map<String, dynamic> map) {
    return WikiDocumentationContract(
      documentationId: map['documentationId'] == null ? null : map['documentationId'] as String,
    );
  }
}

