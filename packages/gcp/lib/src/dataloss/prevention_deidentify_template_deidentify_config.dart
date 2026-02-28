// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_image_transformations.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations.dart';

class PreventionDeidentifyTemplateDeidentifyConfig {
  /// Treat the dataset as an image and redact.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigImageTransformations?
      imageTransformations;

  /// Treat the dataset as free-form text and apply the same free text transformation everywhere
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations?
      infoTypeTransformations;

  /// Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations?
      recordTransformations;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfig].
  /// [imageTransformations] Treat the dataset as an image and redact.
  /// [infoTypeTransformations] Treat the dataset as free-form text and apply the same free text transformation everywhere
  /// [recordTransformations] Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  PreventionDeidentifyTemplateDeidentifyConfig({
    this.imageTransformations,
    this.infoTypeTransformations,
    this.recordTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageTransformationsValue = imageTransformations;
    if (imageTransformationsValue != null) {
      map['imageTransformations'] = imageTransformationsValue.toMap();
    }
    final infoTypeTransformationsValue = infoTypeTransformations;
    if (infoTypeTransformationsValue != null) {
      map['infoTypeTransformations'] = infoTypeTransformationsValue.toMap();
    }
    final recordTransformationsValue = recordTransformations;
    if (recordTransformationsValue != null) {
      map['recordTransformations'] = recordTransformationsValue.toMap();
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfig(
      imageTransformations: map['imageTransformations'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigImageTransformations
              .fromMap(
                  (map['imageTransformations'] as Map).cast<String, dynamic>()),
      infoTypeTransformations: map['infoTypeTransformations'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations
              .fromMap((map['infoTypeTransformations'] as Map)
                  .cast<String, dynamic>()),
      recordTransformations: map['recordTransformations'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations
              .fromMap((map['recordTransformations'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
