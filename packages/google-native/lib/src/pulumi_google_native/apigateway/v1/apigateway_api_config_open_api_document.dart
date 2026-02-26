// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocument {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFile? document;

  ApigatewayApiConfigOpenApiDocument({
    this.document,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final documentValue = document;
    if (documentValue != null) {
      map['document'] = documentValue.toMap();
    }
    return map;
  }

  factory ApigatewayApiConfigOpenApiDocument.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocument(
      document: map['document'] == null
          ? null
          : ApigatewayApiConfigFile.fromMap(
              (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
