// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_response_healthcare_v1beta1.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfigResponseHealthcareV1beta1 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final List<InfoTypeTransformationResponseHealthcareV1beta1>
  additionalTransformations;

  /// InfoTypes to skip transforming, overriding `profile`.
  final List<String> excludeInfoTypes;

  /// Base profile type for text transformation.
  final String profileType;

  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformationResponseHealthcareV1beta1> transformations;

  /// Creates a new [TextConfigResponseHealthcareV1beta1].
  /// [additionalTransformations] Additional transformations to apply to the detected data, overriding `profile`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `profile`.
  /// [profileType] Base profile type for text transformation.
  /// [transformations] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfigResponseHealthcareV1beta1({
    required this.additionalTransformations,
    required this.excludeInfoTypes,
    required this.profileType,
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations':
          pulumi.Input.encodeList<
            InfoTypeTransformationResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(additionalTransformations, (value) => value.toMap()),
      'excludeInfoTypes': excludeInfoTypes,
      'profileType': profileType,
      'transformations':
          pulumi.Input.encodeList<
            InfoTypeTransformationResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(transformations, (value) => value.toMap()),
    };
  }

  factory TextConfigResponseHealthcareV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return TextConfigResponseHealthcareV1beta1(
      additionalTransformations:
          pulumi.Input.decodeList<
            InfoTypeTransformationResponseHealthcareV1beta1
          >(
            map['additionalTransformations'],
            (value) => InfoTypeTransformationResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      excludeInfoTypes: (map['excludeInfoTypes'] as List).cast<String>(),
      profileType: map['profileType'] as String,
      transformations:
          pulumi.Input.decodeList<
            InfoTypeTransformationResponseHealthcareV1beta1
          >(
            map['transformations'],
            (value) => InfoTypeTransformationResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
