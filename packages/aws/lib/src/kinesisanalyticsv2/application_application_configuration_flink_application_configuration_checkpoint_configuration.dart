// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  /// Describes the interval in milliseconds between checkpoint operations.
  final int? checkpointInterval;

  /// Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  final bool? checkpointingEnabled;

  /// Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `checkpointing_enabled`, `checkpoint_interval`, or `min_pause_between_checkpoints` attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// * `checkpointing_enabled = true`
  /// * `checkpoint_interval = 60000`
  /// * `min_pause_between_checkpoints = 5000`
  final String configurationType;

  /// Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  final int? minPauseBetweenCheckpoints;

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
    final map = <String, dynamic>{};
    final checkpointIntervalValue = checkpointInterval;
    if (checkpointIntervalValue != null) {
      map['checkpointInterval'] = checkpointIntervalValue;
    }
    final checkpointingEnabledValue = checkpointingEnabled;
    if (checkpointingEnabledValue != null) {
      map['checkpointingEnabled'] = checkpointingEnabledValue;
    }
    map['configurationType'] = configurationType;
    final minPauseBetweenCheckpointsValue = minPauseBetweenCheckpoints;
    if (minPauseBetweenCheckpointsValue != null) {
      map['minPauseBetweenCheckpoints'] = minPauseBetweenCheckpointsValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration(
      checkpointInterval: map['checkpointInterval'] == null
          ? null
          : map['checkpointInterval'] as int,
      checkpointingEnabled: map['checkpointingEnabled'] == null
          ? null
          : map['checkpointingEnabled'] as bool,
      configurationType: map['configurationType'] as String,
      minPauseBetweenCheckpoints: map['minPauseBetweenCheckpoints'] == null
          ? null
          : map['minPauseBetweenCheckpoints'] as int,
    );
  }
}
