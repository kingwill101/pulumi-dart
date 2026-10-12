// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationCloneToRefreshable {
  /// Automatic refresh frequency in seconds.
  final pulumi.Input<int?>? autoRefreshFrequencyInSeconds;
  /// Refresh lag in seconds.
  final pulumi.Input<int?>? autoRefreshPointLagInSeconds;
  /// Clone type.
  final pulumi.Input<String?>? cloneType;
  /// Clone open mode.
  final pulumi.Input<String?>? openMode;
  /// Refresh mode.
  final pulumi.Input<String?>? refreshableMode;
  /// ID of the source Autonomous Database.
  final pulumi.Input<String> sourceAutonomousDatabaseId;
  /// RFC3339 automatic refresh start timestamp.
  final pulumi.Input<String?>? timeOfAutoRefreshStart;

  /// Creates a new [AutonomousDatabaseSourceConfigurationCloneToRefreshable].
  /// [autoRefreshFrequencyInSeconds] Automatic refresh frequency in seconds.
  /// [autoRefreshPointLagInSeconds] Refresh lag in seconds.
  /// [cloneType] Clone type.
  /// [openMode] Clone open mode.
  /// [refreshableMode] Refresh mode.
  /// [sourceAutonomousDatabaseId] ID of the source Autonomous Database.
  /// [timeOfAutoRefreshStart] RFC3339 automatic refresh start timestamp.
  const AutonomousDatabaseSourceConfigurationCloneToRefreshable({
    this.autoRefreshFrequencyInSeconds,
    this.autoRefreshPointLagInSeconds,
    this.cloneType,
    this.openMode,
    this.refreshableMode,
    required this.sourceAutonomousDatabaseId,
    this.timeOfAutoRefreshStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRefreshFrequencyInSeconds': ?autoRefreshFrequencyInSeconds,
      'autoRefreshPointLagInSeconds': ?autoRefreshPointLagInSeconds,
      'cloneType': ?cloneType,
      'openMode': ?openMode,
      'refreshableMode': ?refreshableMode,
      'sourceAutonomousDatabaseId': sourceAutonomousDatabaseId,
      'timeOfAutoRefreshStart': ?timeOfAutoRefreshStart,
    };
  }

  factory AutonomousDatabaseSourceConfigurationCloneToRefreshable.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationCloneToRefreshable(
      autoRefreshFrequencyInSeconds: (() { final guardedValue = map['autoRefreshFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      autoRefreshPointLagInSeconds: (() { final guardedValue = map['autoRefreshPointLagInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      cloneType: (() { final guardedValue = map['cloneType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openMode: (() { final guardedValue = map['openMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshableMode: (() { final guardedValue = map['refreshableMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAutonomousDatabaseId: pulumi.Input.fromValue(map['sourceAutonomousDatabaseId'] as String),
      timeOfAutoRefreshStart: (() { final guardedValue = map['timeOfAutoRefreshStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
