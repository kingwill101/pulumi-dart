// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'info_type_transformation_response2.dart';

/// Configures how to transform sensitive text `InfoTypes`.
class TextConfigResponse2 {
  /// Additional transformations to apply to the detected data, overriding `profile`.
  final List<InfoTypeTransformationResponse2> additionalTransformations;

  /// InfoTypes to skip transforming, overriding `profile`.
  final List<String> excludeInfoTypes;

  /// Base profile type for text transformation.
  final String profileType;

  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformationResponse2> transformations;

  TextConfigResponse2({
    required this.additionalTransformations,
    required this.excludeInfoTypes,
    required this.profileType,
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalTransformations'] =
        Input.encodeList<InfoTypeTransformationResponse2, Map<String, dynamic>>(
            additionalTransformations, (value) => value.toMap());
    map['excludeInfoTypes'] = excludeInfoTypes;
    map['profileType'] = profileType;
    map['transformations'] =
        Input.encodeList<InfoTypeTransformationResponse2, Map<String, dynamic>>(
            transformations, (value) => value.toMap());
    return map;
  }

  factory TextConfigResponse2.fromMap(Map<String, dynamic> map) {
    return TextConfigResponse2(
      additionalTransformations:
          Input.decodeList<InfoTypeTransformationResponse2>(
              map['additionalTransformations'],
              (value) => InfoTypeTransformationResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: (map['excludeInfoTypes'] as List).cast<String>(),
      profileType: map['profileType'] as String,
      transformations: Input.decodeList<InfoTypeTransformationResponse2>(
          map['transformations'],
          (value) => InfoTypeTransformationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
