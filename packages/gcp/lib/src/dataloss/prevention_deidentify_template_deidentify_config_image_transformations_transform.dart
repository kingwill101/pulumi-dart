// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_image_transformations_transform_redaction_color.dart';
import 'prevention_deidentify_template_deidentify_config_image_transformations_transform_selected_info_types.dart';

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform {
  /// Apply transformation to all findings not specified in other ImageTransformation's selectedInfoTypes.
  final Map<String, dynamic>? allInfoTypes;

  /// Apply transformation to all text that doesn't match an infoType.
  final Map<String, dynamic>? allText;

  /// The color to use when redacting content from an image. If not specified, the default is black.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor?
  redactionColor;

  /// Apply transformation to the selected infoTypes.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes?
  selectedInfoTypes;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform].
  /// [allInfoTypes] Apply transformation to all findings not specified in other ImageTransformation's selectedInfoTypes.
  /// [allText] Apply transformation to all text that doesn't match an infoType.
  /// [redactionColor] The color to use when redacting content from an image. If not specified, the default is black.
  /// [selectedInfoTypes] Apply transformation to the selected infoTypes.
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInfoTypes': ?allInfoTypes,
      'allText': ?allText,
      'redactionColor': ?redactionColor == null
          ? null
          : redactionColor!.toMap(),
      'selectedInfoTypes': ?selectedInfoTypes == null
          ? null
          : selectedInfoTypes!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform(
      allInfoTypes: map['allInfoTypes'] == null
          ? null
          : (map['allInfoTypes'] as Map).cast<String, dynamic>(),
      allText: map['allText'] == null
          ? null
          : (map['allText'] as Map).cast<String, dynamic>(),
      redactionColor: map['redactionColor'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor.fromMap(
              (map['redactionColor'] as Map).cast<String, dynamic>(),
            ),
      selectedInfoTypes: map['selectedInfoTypes'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes.fromMap(
              (map['selectedInfoTypes'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
