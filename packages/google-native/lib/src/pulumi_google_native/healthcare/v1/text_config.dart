// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'info_type_transformation.dart';

class TextConfig {
  /// Transformations to apply to the detected data, overridden by `exclude_info_types`.
  final List<InfoTypeTransformation>? additionalTransformations;

  /// InfoTypes to skip transforming, overriding `additional_transformations`.
  final List<String>? excludeInfoTypes;

  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformation>? transformations;

  TextConfig({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalTransformationsValue = additionalTransformations;
    if (additionalTransformationsValue != null) {
      map['additionalTransformations'] =
          Input.encodeList<InfoTypeTransformation, Map<String, dynamic>>(
              additionalTransformationsValue, (value) => value.toMap());
    }
    final excludeInfoTypesValue = excludeInfoTypes;
    if (excludeInfoTypesValue != null) {
      map['excludeInfoTypes'] = excludeInfoTypesValue;
    }
    final transformationsValue = transformations;
    if (transformationsValue != null) {
      map['transformations'] =
          Input.encodeList<InfoTypeTransformation, Map<String, dynamic>>(
              transformationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TextConfig.fromMap(Map<String, dynamic> map) {
    return TextConfig(
      additionalTransformations: map['additionalTransformations'] == null
          ? null
          : Input.decodeList<InfoTypeTransformation>(
              map['additionalTransformations'],
              (value) => InfoTypeTransformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : (map['excludeInfoTypes'] as List).cast<String>(),
      transformations: map['transformations'] == null
          ? null
          : Input.decodeList<InfoTypeTransformation>(
              map['transformations'],
              (value) => InfoTypeTransformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
