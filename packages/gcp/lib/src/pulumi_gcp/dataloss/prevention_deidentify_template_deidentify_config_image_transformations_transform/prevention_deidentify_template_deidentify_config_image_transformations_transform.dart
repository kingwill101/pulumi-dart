// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_image_transformations_transform_redaction_color/prevention_deidentify_template_deidentify_config_image_transformations_transform_redaction_color.dart';
import '../prevention_deidentify_template_deidentify_config_image_transformations_transform_selected_info_types/prevention_deidentify_template_deidentify_config_image_transformations_transform_selected_info_types.dart';

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

  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInfoTypesValue = allInfoTypes;
    if (allInfoTypesValue != null) {
      map['allInfoTypes'] = allInfoTypesValue;
    }
    final allTextValue = allText;
    if (allTextValue != null) {
      map['allText'] = allTextValue;
    }
    final redactionColorValue = redactionColor;
    if (redactionColorValue != null) {
      map['redactionColor'] = redactionColorValue.toMap();
    }
    final selectedInfoTypesValue = selectedInfoTypes;
    if (selectedInfoTypesValue != null) {
      map['selectedInfoTypes'] = selectedInfoTypesValue.toMap();
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform(
      allInfoTypes: map['allInfoTypes'] == null
          ? null
          : (map['allInfoTypes'] as Map).cast<String, dynamic>(),
      allText: map['allText'] == null
          ? null
          : (map['allText'] as Map).cast<String, dynamic>(),
      redactionColor: map['redactionColor'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor
              .fromMap((map['redactionColor'] as Map).cast<String, dynamic>()),
      selectedInfoTypes: map['selectedInfoTypes'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes
              .fromMap(
                  (map['selectedInfoTypes'] as Map).cast<String, dynamic>()),
    );
  }
}
