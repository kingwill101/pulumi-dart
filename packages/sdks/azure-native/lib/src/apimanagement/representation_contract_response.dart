// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'parameter_example_contract_response.dart';

/// Operation request/response representation details.
class RepresentationContractResponse {
  /// Specifies a registered or custom content type for this representation, e.g. application/xml.
  final pulumi.Input<String> contentType;
  /// Exampled defined for the representation.
  final pulumi.Input<Map<String, ParameterExampleContractResponse>>? examples;
  /// Collection of form parameters. Required if 'contentType' value is either 'application/x-www-form-urlencoded' or 'multipart/form-data'..
  final pulumi.Input<List<ParameterContractResponse>>? formParameters;
  /// Schema identifier. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final pulumi.Input<String>? schemaId;
  /// Type name defined by the schema. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final pulumi.Input<String>? typeName;

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
      'examples': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterExampleContractResponse>, Map<String, Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeMapValues<ParameterExampleContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'formParameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterContractResponse>, List<Map<String, dynamic>>>(formParameters, (value) => pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory RepresentationContractResponse.fromMap(Map<String, dynamic> map) {
    return RepresentationContractResponse(
      contentType: (map['contentType'] as String).input(),
      examples: map['examples'] == null ? null : (pulumi.Input.decodeMapValues<ParameterExampleContractResponse>(map['examples']!, (value) => ParameterExampleContractResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      formParameters: map['formParameters'] == null ? null : (pulumi.Input.decodeList<ParameterContractResponse>(map['formParameters']!, (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaId: map['schemaId'] == null ? null : (map['schemaId']! as String).input(),
      typeName: map['typeName'] == null ? null : (map['typeName']! as String).input(),
    );
  }
}

