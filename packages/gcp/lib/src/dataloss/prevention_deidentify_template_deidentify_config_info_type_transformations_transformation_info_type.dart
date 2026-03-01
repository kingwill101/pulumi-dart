// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_info_type_sensitivity_score.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType {
  /// Name of the information type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeSensitivityScore?
  sensitivityScore;

  /// Version name for this InfoType.
  final String? version;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType].
  /// [name] Name of the information type.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version name for this InfoType.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': ?sensitivityScore == null
          ? null
          : sensitivityScore!.toMap(),
      'version': ?version,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeSensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
