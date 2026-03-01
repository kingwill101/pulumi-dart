// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'executed_validation_response.dart';
import 'platform_attribute_response.dart';

/// This is the validations profile of a Gallery Image Version.
class ValidationsProfileResponse {
  final List<ExecutedValidationResponse>? executedValidations;
  /// This specifies the pub, offer, sku and version of the image version metadata
  final List<PlatformAttributeResponse>? platformAttributes;
  /// The published time of the image version
  final String? validationEtag;

  /// Creates a new [ValidationsProfileResponse].
  /// [executedValidations] Optional.
  /// [platformAttributes] This specifies the pub, offer, sku and version of the image version metadata
  /// [validationEtag] The published time of the image version
  ValidationsProfileResponse({
    this.executedValidations,
    this.platformAttributes,
    this.validationEtag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executedValidations': ?executedValidations == null ? null : pulumi.Input.encodeList<ExecutedValidationResponse, Map<String, dynamic>>(executedValidations!, (value) => value.toMap()),
      'platformAttributes': ?platformAttributes == null ? null : pulumi.Input.encodeList<PlatformAttributeResponse, Map<String, dynamic>>(platformAttributes!, (value) => value.toMap()),
      'validationEtag': ?validationEtag,
    };
  }

  factory ValidationsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ValidationsProfileResponse(
      executedValidations: map['executedValidations'] == null ? null : pulumi.Input.decodeList<ExecutedValidationResponse>(map['executedValidations'], (value) => ExecutedValidationResponse.fromMap((value as Map).cast<String, dynamic>())),
      platformAttributes: map['platformAttributes'] == null ? null : pulumi.Input.decodeList<PlatformAttributeResponse>(map['platformAttributes'], (value) => PlatformAttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationEtag: map['validationEtag'] == null ? null : map['validationEtag'] as String,
    );
  }
}

