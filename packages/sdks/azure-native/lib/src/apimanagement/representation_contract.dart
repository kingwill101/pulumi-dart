// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'parameter_example_contract.dart';

/// Operation request/response representation details.
class RepresentationContract {
  /// Specifies a registered or custom content type for this representation, e.g. application/xml.
  final String contentType;
  /// Exampled defined for the representation.
  final Map<String, ParameterExampleContract>? examples;
  /// Collection of form parameters. Required if 'contentType' value is either 'application/x-www-form-urlencoded' or 'multipart/form-data'..
  final List<ParameterContract>? formParameters;
  /// Schema identifier. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final String? schemaId;
  /// Type name defined by the schema. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  final String? typeName;

  /// Creates a new [RepresentationContract].
  /// [contentType] Specifies a registered or custom content type for this representation, e.g. application/xml.
  /// [examples] Exampled defined for the representation.
  /// [formParameters] Collection of form parameters. Required if 'contentType' value is either 'application/x-www-form-urlencoded' or 'multipart/form-data'..
  /// [schemaId] Schema identifier. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  /// [typeName] Type name defined by the schema. Applicable only if 'contentType' value is neither 'application/x-www-form-urlencoded' nor 'multipart/form-data'.
  RepresentationContract({
    required this.contentType,
    this.examples,
    this.formParameters,
    this.schemaId,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'examples': ?examples == null ? null : pulumi.Input.encodeMapValues<ParameterExampleContract, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'formParameters': ?formParameters == null ? null : pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(formParameters!, (value) => value.toMap()),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory RepresentationContract.fromMap(Map<String, dynamic> map) {
    return RepresentationContract(
      contentType: map['contentType'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeMapValues<ParameterExampleContract>(map['examples'], (value) => ParameterExampleContract.fromMap((value as Map).cast<String, dynamic>())),
      formParameters: map['formParameters'] == null ? null : pulumi.Input.decodeList<ParameterContract>(map['formParameters'], (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>())),
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
    );
  }
}

