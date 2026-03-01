// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'parameter_example_contract_response.dart';

/// Operation request/response representation details.
class RepresentationContractResponse {
  /// Specifies a registered or custom content type for this representation, e.g. application/xml.
  final String contentType;
  /// Exampled defined for the representation.
  final Map<String, ParameterExampleContractResponse>? examples;
  /// Collection of form parameters. Required if 'contentType' value is either 'application/x-www-form-urlencoded' or 'multipart/form-data'..
  final List<ParameterContractResponse>? formParameters;
  /// Schema identifier. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final String? schemaId;
  /// Type name defined by the schema. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final String? typeName;

  /// Creates a new [RepresentationContractResponse].
  /// [contentType] Specifies a registered or custom content type for this representation, e.g. application/xml.
  /// [examples] Exampled defined for the representation.
  /// [formParameters] Collection of form parameters. Required if 'contentType' value is either 'application/x-www-form-urlencoded' or 'multipart/form-data'..
  /// [schemaId] Schema identifier. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  /// [typeName] Type name defined by the schema. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  RepresentationContractResponse({
    required this.contentType,
    this.examples,
    this.formParameters,
    this.schemaId,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'examples': ?examples == null ? null : pulumi.Input.encodeMapValues<ParameterExampleContractResponse, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'formParameters': ?formParameters == null ? null : pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(formParameters!, (value) => value.toMap()),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory RepresentationContractResponse.fromMap(Map<String, dynamic> map) {
    return RepresentationContractResponse(
      contentType: map['contentType'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeMapValues<ParameterExampleContractResponse>(map['examples'], (value) => ParameterExampleContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      formParameters: map['formParameters'] == null ? null : pulumi.Input.decodeList<ParameterContractResponse>(map['formParameters'], (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
    );
  }
}

