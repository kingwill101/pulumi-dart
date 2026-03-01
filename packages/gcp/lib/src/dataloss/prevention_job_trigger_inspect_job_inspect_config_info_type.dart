// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_info_type_sensitivity_score.dart';

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

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version of the information type to use. By default, the version is set to stable.
  PreventionJobTriggerInspectJobInspectConfigInfoType({
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

  factory PreventionJobTriggerInspectJobInspectConfigInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
