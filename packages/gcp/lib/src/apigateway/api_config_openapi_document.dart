// ignore_for_file: unused_element, unnecessary_cast

import 'api_config_openapi_document_document.dart';

class ApiConfigOpenapiDocument {
  /// The OpenAPI Specification document file.
  /// Structure is documented below.
  final ApiConfigOpenapiDocumentDocument document;

  /// Creates a new [ApiConfigOpenapiDocument].
  /// [document] The OpenAPI Specification document file.
  ApiConfigOpenapiDocument({required this.document});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'document': document.toMap()};
  }

  factory ApiConfigOpenapiDocument.fromMap(Map<String, dynamic> map) {
    return ApiConfigOpenapiDocument(
      document: ApiConfigOpenapiDocumentDocument.fromMap(
        (map['document'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
