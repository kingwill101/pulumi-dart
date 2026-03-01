// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocument {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFile? document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocument].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocument({this.document});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': ?document == null ? null : document!.toMap(),
    };
  }

  factory ApigatewayApiConfigOpenApiDocument.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocument(
      document: map['document'] == null
          ? null
          : ApigatewayApiConfigFile.fromMap(
              (map['document'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
