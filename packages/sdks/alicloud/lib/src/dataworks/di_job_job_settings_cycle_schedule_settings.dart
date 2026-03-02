// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobJobSettingsCycleScheduleSettings {
  /// The type of synchronization that requires periodic scheduling. Value range:
  ///
  /// Full: Full
  ///
  /// OfflineIncremental: offline increment
  final pulumi.Input<String>? cycleMigrationType;
  /// Scheduling Parameters
  final pulumi.Input<String>? scheduleParameters;

  /// Creates a new [DiJobJobSettingsCycleScheduleSettings].
  /// [cycleMigrationType] The type of synchronization that requires periodic scheduling. Value range:
  /// [scheduleParameters] Scheduling Parameters
  DiJobJobSettingsCycleScheduleSettings({
    this.cycleMigrationType,
    this.scheduleParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cycleMigrationType': ?cycleMigrationType,
      'scheduleParameters': ?scheduleParameters,
    };
  }

  factory DiJobJobSettingsCycleScheduleSettings.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettingsCycleScheduleSettings(
      cycleMigrationType: map['cycleMigrationType'] == null ? null : (map['cycleMigrationType'] as String).input(),
      scheduleParameters: map['scheduleParameters'] == null ? null : (map['scheduleParameters'] as String).input(),
    );
  }
}

