// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'info_type_transformation_response.dart';

class TextConfigResponse {
  /// Transformations to apply to the detected data, overridden by `exclude_info_types`.
  final List<InfoTypeTransformationResponse> additionalTransformations;
  /// InfoTypes to skip transforming, overriding `additional_transformations`.
  final List<String> excludeInfoTypes;
  /// The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  final List<InfoTypeTransformationResponse> transformations;

  /// Creates a new [TextConfigResponse].
  /// [additionalTransformations] Transformations to apply to the detected data, overridden by `exclude_info_types`.
  /// [excludeInfoTypes] InfoTypes to skip transforming, overriding `additional_transformations`.
  /// [transformations] The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  TextConfigResponse({
    required this.additionalTransformations,
    required this.excludeInfoTypes,
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTransformations': pulumi.Input.encodeList<InfoTypeTransformationResponse, Map<String, dynamic>>(additionalTransformations, (value) => value.toMap()),
      'excludeInfoTypes': excludeInfoTypes,
      'transformations': pulumi.Input.encodeList<InfoTypeTransformationResponse, Map<String, dynamic>>(transformations, (value) => value.toMap()),
    };
  }

  factory TextConfigResponse.fromMap(Map<String, dynamic> map) {
    return TextConfigResponse(
      additionalTransformations: pulumi.Input.decodeList<InfoTypeTransformationResponse>(map['additionalTransformations'], (value) => InfoTypeTransformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      excludeInfoTypes: (map['excludeInfoTypes'] as List).cast<String>(),
      transformations: pulumi.Input.decodeList<InfoTypeTransformationResponse>(map['transformations'], (value) => InfoTypeTransformationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

