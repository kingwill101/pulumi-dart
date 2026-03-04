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
      'examples':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterExampleContractResponse>,
            Map<String, Map<String, dynamic>>
          >(
            examples,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterExampleContractResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'formParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterContractResponse>,
            List<Map<String, dynamic>>
          >(
            formParameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterContractResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory RepresentationContractResponse.fromMap(Map<String, dynamic> map) {
    return RepresentationContractResponse(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      examples: (() {
        final guardedValue = map['examples'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterExampleContractResponse>(
            guardedValue,
            (value) => ParameterExampleContractResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      formParameters: (() {
        final guardedValue = map['formParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ParameterContractResponse>(
            guardedValue,
            (value) => ParameterContractResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      schemaId: (() {
        final guardedValue = map['schemaId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeName: (() {
        final guardedValue = map['typeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
