// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_job_trigger_inspect_job_inspect_config_info_type_sensitivity_score/prevention_job_trigger_inspect_job_inspect_config_info_type_sensitivity_score.dart';

class PreventionJobTriggerInspectJobInspectConfigInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore?
      sensitivityScore;

  /// Version of the information type to use. By default, the version is set to stable.
  final String? version;

  PreventionJobTriggerInspectJobInspectConfigInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final sensitivityScoreValue = sensitivityScore;
    if (sensitivityScoreValue != null) {
      map['sensitivityScore'] = sensitivityScoreValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobInspectConfigInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore
              .fromMap(
                  (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
