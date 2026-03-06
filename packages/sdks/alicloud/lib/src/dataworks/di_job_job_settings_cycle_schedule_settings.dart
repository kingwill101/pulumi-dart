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
  const DiJobJobSettingsCycleScheduleSettings({
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
      cycleMigrationType: (() { final guardedValue = map['cycleMigrationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleParameters: (() { final guardedValue = map['scheduleParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

