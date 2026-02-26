// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations {
  /// Transformation for each infoType. Cannot specify more than one for a given infoType.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation>
      transformations;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations({
    required this.transformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transformations'] = Input.encodeList<
        PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation,
        Map<String, dynamic>>(transformations, (value) => value.toMap());
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations(
      transformations: Input.decodeList<
              PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation>(
          map['transformations'],
          (value) =>
              PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
