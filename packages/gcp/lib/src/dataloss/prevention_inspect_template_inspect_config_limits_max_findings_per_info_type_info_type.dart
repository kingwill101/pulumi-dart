// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_inspect_template_inspect_config_limits_max_findings_per_info_type_info_type_sensitivity_score.dart';

class PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore?
  sensitivityScore;

  /// Version name for this InfoType.
  final String? version;

  /// Creates a new [PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version name for this InfoType.
  PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType({
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

  factory PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
