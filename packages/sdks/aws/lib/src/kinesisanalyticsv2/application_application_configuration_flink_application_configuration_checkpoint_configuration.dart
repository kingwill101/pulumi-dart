// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  /// Describes the interval in milliseconds between checkpoint operations.
  final pulumi.Input<int>? checkpointInterval;
  /// Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  final pulumi.Input<bool>? checkpointingEnabled;
  /// Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointingEnabled`, `checkpointInterval`, or `minPauseBetweenCheckpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// * `checkpointingEnabled = true`
  /// * `checkpointInterval = 60000`
  /// * `minPauseBetweenCheckpoints = 5000`
  final pulumi.Input<String> configurationType;
  /// Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  final pulumi.Input<int>? minPauseBetweenCheckpoints;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration].
  /// [checkpointInterval] Describes the interval in milliseconds between checkpoint operations.
  /// [checkpointingEnabled] Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  /// [configurationType] Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointingEnabled`, `checkpointInterval`, or `minPauseBetweenCheckpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// [minPauseBetweenCheckpoints] Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
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
      checkpointInterval: (() { final guardedValue = map['checkpointInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      checkpointingEnabled: (() { final guardedValue = map['checkpointingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      minPauseBetweenCheckpoints: (() { final guardedValue = map['minPauseBetweenCheckpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
