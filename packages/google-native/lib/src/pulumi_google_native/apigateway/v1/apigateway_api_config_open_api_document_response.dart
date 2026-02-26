// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file_response.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponse {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFileResponse document;

  ApigatewayApiConfigOpenApiDocumentResponse({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['document'] = document.toMap();
    return map;
  }

  factory ApigatewayApiConfigOpenApiDocumentResponse.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentResponse(
      document: ApigatewayApiConfigFileResponse.fromMap(
          (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
