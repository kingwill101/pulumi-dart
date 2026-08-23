// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Last Run properties.
class LastRunPropertiesResponse {
  /// Attestation state of the last run of this Drill.
  final pulumi.Input<String> lastRunAttestation;
  /// Timespan of the last run of this Drill.
  final pulumi.Input<String> lastRunDuration;
  /// Status of the last run of this Drill.
  final pulumi.Input<String> lastRunState;
  /// Timestamp of the last run of this Drill.
  final pulumi.Input<String> lastRunTime;

  /// Creates a new [LastRunPropertiesResponse].
  /// [lastRunAttestation] Attestation state of the last run of this Drill.
  /// [lastRunDuration] Timespan of the last run of this Drill.
  /// [lastRunState] Status of the last run of this Drill.
  /// [lastRunTime] Timestamp of the last run of this Drill.
  const LastRunPropertiesResponse({
    required this.lastRunAttestation,
    required this.lastRunDuration,
    required this.lastRunState,
    required this.lastRunTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunAttestation': lastRunAttestation,
      'lastRunDuration': lastRunDuration,
      'lastRunState': lastRunState,
      'lastRunTime': lastRunTime,
    };
  }

  factory LastRunPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LastRunPropertiesResponse(
      lastRunAttestation: pulumi.Input.fromValue(map['lastRunAttestation'] as String),
      lastRunDuration: pulumi.Input.fromValue(map['lastRunDuration'] as String),
      lastRunState: pulumi.Input.fromValue(map['lastRunState'] as String),
      lastRunTime: pulumi.Input.fromValue(map['lastRunTime'] as String),
    );
  }
}
