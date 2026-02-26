// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'info_type_transformation2.dart';
import 'text_config_profile_type.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfig2 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final List<InfoTypeTransformation2>? additionalTransformations;

  /// InfoTypes to skip transforming, overriding `profile`.
  final List<String>? excludeInfoTypes;

  /// Base profile type for text transformation.
  final TextConfigProfileType? profileType;

  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformation2>? transformations;

  TextConfig2({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.profileType,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalTransformationsValue = additionalTransformations;
    if (additionalTransformationsValue != null) {
      map['additionalTransformations'] =
          Input.encodeList<InfoTypeTransformation2, Map<String, dynamic>>(
              additionalTransformationsValue, (value) => value.toMap());
    }
    final excludeInfoTypesValue = excludeInfoTypes;
    if (excludeInfoTypesValue != null) {
      map['excludeInfoTypes'] = excludeInfoTypesValue;
    }
    final profileTypeValue = profileType;
    if (profileTypeValue != null) {
      map['profileType'] = profileTypeValue.value;
    }
    final transformationsValue = transformations;
    if (transformationsValue != null) {
      map['transformations'] =
          Input.encodeList<InfoTypeTransformation2, Map<String, dynamic>>(
              transformationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TextConfig2.fromMap(Map<String, dynamic> map) {
    return TextConfig2(
      additionalTransformations: map['additionalTransformations'] == null
          ? null
          : Input.decodeList<InfoTypeTransformation2>(
              map['additionalTransformations'],
              (value) => InfoTypeTransformation2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : (map['excludeInfoTypes'] as List).cast<String>(),
      profileType: map['profileType'] == null
          ? null
          : TextConfigProfileType.fromValue(map['profileType'] as String),
      transformations: map['transformations'] == null
          ? null
          : Input.decodeList<InfoTypeTransformation2>(
              map['transformations'],
              (value) => InfoTypeTransformation2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
