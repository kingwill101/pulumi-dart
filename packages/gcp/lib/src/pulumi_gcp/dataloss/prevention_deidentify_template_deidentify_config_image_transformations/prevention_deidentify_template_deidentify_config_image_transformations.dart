// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_deidentify_template_deidentify_config_image_transformations_transform/prevention_deidentify_template_deidentify_config_image_transformations_transform.dart';

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformations {
  /// For determination of how redaction of images should occur.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform>
      transforms;

  PreventionDeidentifyTemplateDeidentifyConfigImageTransformations({
    required this.transforms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transforms'] = Input.encodeList<
        PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform,
        Map<String, dynamic>>(transforms, (value) => value.toMap());
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformations.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformations(
      transforms: Input.decodeList<
              PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform>(
          map['transforms'],
          (value) =>
              PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
