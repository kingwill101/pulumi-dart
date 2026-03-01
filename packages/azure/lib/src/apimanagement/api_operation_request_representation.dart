// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_representation_example.dart';
import 'api_operation_request_representation_form_parameter.dart';

class ApiOperationRequestRepresentation {
  /// The Content Type of this representation, such as `application/json`.
  final String contentType;
  /// One or more `example` blocks as defined above.
  final List<ApiOperationRequestRepresentationExample>? examples;
  /// One or more `form_parameter` block as defined above.
  ///
  /// > **Note:** This is Required when `content_type` is set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final List<ApiOperationRequestRepresentationFormParameter>? formParameters;
  /// The ID of an API Management Schema which represents this Response.
  ///
  /// > **Note:** This can only be specified when `content_type` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final String? schemaId;
  /// The Type Name defined by the Schema.
  ///
  /// > **Note:** This can only be specified when `content_type` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final String? typeName;

  /// Creates a new [ApiOperationRequestRepresentation].
  /// [contentType] The Content Type of this representation, such as `application/json`.
  /// [examples] One or more `example` blocks as defined above.
  /// [formParameters] One or more `form_parameter` block as defined above.
  /// [schemaId] The ID of an API Management Schema which represents this Response.
  /// [typeName] The Type Name defined by the Schema.
  ApiOperationRequestRepresentation({
    required this.contentType,
    this.examples,
    this.formParameters,
    this.schemaId,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'examples': ?examples == null ? null : pulumi.Input.encodeList<ApiOperationRequestRepresentationExample, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'formParameters': ?formParameters == null ? null : pulumi.Input.encodeList<ApiOperationRequestRepresentationFormParameter, Map<String, dynamic>>(formParameters!, (value) => value.toMap()),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory ApiOperationRequestRepresentation.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequestRepresentation(
      contentType: map['contentType'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestRepresentationExample>(map['examples'], (value) => ApiOperationRequestRepresentationExample.fromMap((value as Map).cast<String, dynamic>())),
      formParameters: map['formParameters'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestRepresentationFormParameter>(map['formParameters'], (value) => ApiOperationRequestRepresentationFormParameter.fromMap((value as Map).cast<String, dynamic>())),
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
    );
  }
}

