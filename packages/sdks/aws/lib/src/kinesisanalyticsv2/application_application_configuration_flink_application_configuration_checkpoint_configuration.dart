// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  /// Interval in milliseconds between checkpoint operations.
  final pulumi.Input<int?>? checkpointInterval;
  /// Whether checkpointing is enabled for a Flink-based application.
  final pulumi.Input<bool?>? checkpointingEnabled;
  /// Whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointingEnabled`, `checkpointInterval`, or `minPauseBetweenCheckpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values: `checkpointingEnabled = true`, `checkpointInterval = 60000`, and `minPauseBetweenCheckpoints = 5000`.
  final pulumi.Input<String> configurationType;
  /// Minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  final pulumi.Input<int?>? minPauseBetweenCheckpoints;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration].
  /// [checkpointInterval] Interval in milliseconds between checkpoint operations.
  /// [checkpointingEnabled] Whether checkpointing is enabled for a Flink-based application.
  /// [configurationType] Whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointingEnabled`, `checkpointInterval`, or `minPauseBetweenCheckpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values: `checkpointingEnabled = true`, `checkpointInterval = 60000`, and `minPauseBetweenCheckpoints = 5000`.
  /// [minPauseBetweenCheckpoints] Minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  const ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration({
    this.checkpointInterval,
    this.checkpointingEnabled,
    required this.configurationType,
    this.minPauseBetweenCheckpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointInterval': ?checkpointInterval,
      'checkpointingEnabled': ?checkpointingEnabled,
      'configurationType': configurationType,
      'minPauseBetweenCheckpoints': ?minPauseBetweenCheckpoints,
    };
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration(
      checkpointInterval: (() { final guardedValue = map['checkpointInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      checkpointingEnabled: (() { final guardedValue = map['checkpointingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      minPauseBetweenCheckpoints: (() { final guardedValue = map['minPauseBetweenCheckpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
