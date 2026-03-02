// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  /// Describes the interval in milliseconds between checkpoint operations.
  final pulumi.Input<int>? checkpointInterval;
  /// Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  final pulumi.Input<bool>? checkpointingEnabled;
  /// Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointing_enabled`, `checkpoint_interval`, or `min_pause_between_checkpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// * `checkpointing_enabled = true`
  /// * `checkpoint_interval = 60000`
  /// * `min_pause_between_checkpoints = 5000`
  final pulumi.Input<String> configurationType;
  /// Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  final pulumi.Input<int>? minPauseBetweenCheckpoints;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration].
  /// [checkpointInterval] Describes the interval in milliseconds between checkpoint operations.
  /// [checkpointingEnabled] Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  /// [configurationType] Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointing_enabled`, `checkpoint_interval`, or `min_pause_between_checkpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// [minPauseBetweenCheckpoints] Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration({
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
      checkpointInterval: map['checkpointInterval'] == null ? null : ((map['checkpointInterval'] as int).input()).input(),
      checkpointingEnabled: map['checkpointingEnabled'] == null ? null : ((map['checkpointingEnabled'] as bool).input()).input(),
      configurationType: (map['configurationType'] as String).input(),
      minPauseBetweenCheckpoints: map['minPauseBetweenCheckpoints'] == null ? null : ((map['minPauseBetweenCheckpoints'] as int).input()).input(),
    );
  }
}

