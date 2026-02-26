// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file2.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocument2 {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFile2? document;

  ApigatewayApiConfigOpenApiDocument2({
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

  factory ApigatewayApiConfigOpenApiDocument2.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocument2(
      document: map['document'] == null
          ? null
          : ApigatewayApiConfigFile2.fromMap(
              (map['document'] as Map).cast<String, dynamic>()),
    );
  }
}
