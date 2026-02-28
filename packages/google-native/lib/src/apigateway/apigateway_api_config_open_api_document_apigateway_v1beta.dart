// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file_apigateway_v1beta.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentApigatewayV1beta {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFileApigatewayV1beta? document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentApigatewayV1beta].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentApigatewayV1beta({
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

  factory ApigatewayApiConfigOpenApiDocumentApigatewayV1beta.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentApigatewayV1beta(
      document: map['document'] == null
          ? null
          : ApigatewayApiConfigFileApigatewayV1beta.fromMap(
              (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
