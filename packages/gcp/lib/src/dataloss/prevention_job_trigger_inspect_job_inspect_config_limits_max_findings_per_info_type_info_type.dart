// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_limits_max_findings_per_info_type_info_type_sensitivity_score.dart';

class PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore?
  sensitivityScore;

  /// Version of the information type to use. By default, the version is set to stable.
  final String? version;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version of the information type to use. By default, the version is set to stable.
  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType({
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

  factory PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
