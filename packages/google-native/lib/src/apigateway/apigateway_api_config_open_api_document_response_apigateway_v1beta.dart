// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file_response_apigateway_v1beta.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFileResponseApigatewayV1beta document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['document'] = document.toMap();
    return map;
  }

  factory ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta(
      document: ApigatewayApiConfigFileResponseApigatewayV1beta.fromMap(
          (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
