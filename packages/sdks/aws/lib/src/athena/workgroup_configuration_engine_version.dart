// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationEngineVersion {
  /// The engine version on which the query runs. If `selected_engine_version` is set to `AUTO`, the effective engine version is chosen by Athena.
  final pulumi.Input<String>? effectiveEngineVersion;
  /// Requested engine version. Defaults to `AUTO`.
  final pulumi.Input<String>? selectedEngineVersion;

  /// Creates a new [WorkgroupConfigurationEngineVersion].
  /// [effectiveEngineVersion] The engine version on which the query runs. If `selected_engine_version` is set to `AUTO`, the effective engine version is chosen by Athena.
  /// [selectedEngineVersion] Requested engine version. Defaults to `AUTO`.
  WorkgroupConfigurationEngineVersion({
    this.effectiveEngineVersion,
    this.selectedEngineVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveEngineVersion': ?effectiveEngineVersion,
      'selectedEngineVersion': ?selectedEngineVersion,
    };
  }

  factory WorkgroupConfigurationEngineVersion.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationEngineVersion(
      effectiveEngineVersion: map['effectiveEngineVersion'] == null ? null : ((map['effectiveEngineVersion'] as String).input()).input(),
      selectedEngineVersion: map['selectedEngineVersion'] == null ? null : ((map['selectedEngineVersion'] as String).input()).input(),
    );
  }
}

