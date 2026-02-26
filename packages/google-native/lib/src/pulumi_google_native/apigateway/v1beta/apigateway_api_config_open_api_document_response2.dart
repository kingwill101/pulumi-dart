// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file_response2.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponse2 {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFileResponse2 document;

  ApigatewayApiConfigOpenApiDocumentResponse2({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['document'] = document.toMap();
    return map;
  }

  factory ApigatewayApiConfigOpenApiDocumentResponse2.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentResponse2(
      document: ApigatewayApiConfigFileResponse2.fromMap(
          (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
