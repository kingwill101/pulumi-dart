// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_healthcare_v1beta1.dart';
import 'text_config_profile_type.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfigHealthcareV1beta1 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final List<InfoTypeTransformationHealthcareV1beta1>?
  additionalTransformations;

  /// InfoTypes to skip transforming, overriding `profile`.
  final List<String>? excludeInfoTypes;

  /// Base profile type for text transformation.
  final TextConfigProfileType? profileType;

  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformationHealthcareV1beta1>? transformations;

  /// Creates a new [TextConfigHealthcareV1beta1].
  /// [additionalTransformations] Additional transformations to apply to the detected data, overriding `profile`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `profile`.
  /// [profileType] Base profile type for text transformation.
  /// [transformations] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfigHealthcareV1beta1({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.profileType,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': ?additionalTransformations == null
          ? null
          : pulumi.Input.encodeList<
              InfoTypeTransformationHealthcareV1beta1,
              Map<String, dynamic>
            >(additionalTransformations!, (value) => value.toMap()),
      'excludeInfoTypes': ?excludeInfoTypes,
      'profileType': ?profileType == null ? null : profileType!.value,
      'transformations': ?transformations == null
          ? null
          : pulumi.Input.encodeList<
              InfoTypeTransformationHealthcareV1beta1,
              Map<String, dynamic>
            >(transformations!, (value) => value.toMap()),
    };
  }

  factory TextConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TextConfigHealthcareV1beta1(
      additionalTransformations: map['additionalTransformations'] == null
          ? null
          : pulumi.Input.decodeList<InfoTypeTransformationHealthcareV1beta1>(
              map['additionalTransformations'],
              (value) => InfoTypeTransformationHealthcareV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : (map['excludeInfoTypes'] as List).cast<String>(),
      profileType: map['profileType'] == null
          ? null
          : TextConfigProfileType.fromValue(map['profileType'] as String),
      transformations: map['transformations'] == null
          ? null
          : pulumi.Input.decodeList<InfoTypeTransformationHealthcareV1beta1>(
              map['transformations'],
              (value) => InfoTypeTransformationHealthcareV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
