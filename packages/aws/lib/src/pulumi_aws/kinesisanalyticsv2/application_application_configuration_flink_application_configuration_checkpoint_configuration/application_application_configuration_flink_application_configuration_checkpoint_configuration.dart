// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  /// Describes the interval in milliseconds between checkpoint operations.
  final int? checkpointInterval;

  /// Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
  final bool? checkpointingEnabled;

  /// Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified <span pulumi-lang-nodejs="`checkpointingEnabled`" pulumi-lang-dotnet="`CheckpointingEnabled`" pulumi-lang-go="`checkpointingEnabled`" pulumi-lang-python="`checkpointing_enabled`" pulumi-lang-yaml="`checkpointingEnabled`" pulumi-lang-java="`checkpointingEnabled`">`checkpointing_enabled`</span>, <span pulumi-lang-nodejs="`checkpointInterval`" pulumi-lang-dotnet="`CheckpointInterval`" pulumi-lang-go="`checkpointInterval`" pulumi-lang-python="`checkpoint_interval`" pulumi-lang-yaml="`checkpointInterval`" pulumi-lang-java="`checkpointInterval`">`checkpoint_interval`</span>, or <span pulumi-lang-nodejs="`minPauseBetweenCheckpoints`" pulumi-lang-dotnet="`MinPauseBetweenCheckpoints`" pulumi-lang-go="`minPauseBetweenCheckpoints`" pulumi-lang-python="`min_pause_between_checkpoints`" pulumi-lang-yaml="`minPauseBetweenCheckpoints`" pulumi-lang-java="`minPauseBetweenCheckpoints`">`min_pause_between_checkpoints`</span> attribute values to be effective. If this attribute is set to `DEFAULT`, the application will always use the following values:
  /// * <span pulumi-lang-nodejs="`checkpointingEnabled " pulumi-lang-dotnet="`CheckpointingEnabled " pulumi-lang-go="`checkpointingEnabled " pulumi-lang-python="`checkpointing_enabled " pulumi-lang-yaml="`checkpointingEnabled " pulumi-lang-java="`checkpointingEnabled ">`checkpointing_enabled </span>= true`
  /// * <span pulumi-lang-nodejs="`checkpointInterval " pulumi-lang-dotnet="`CheckpointInterval " pulumi-lang-go="`checkpointInterval " pulumi-lang-python="`checkpoint_interval " pulumi-lang-yaml="`checkpointInterval " pulumi-lang-java="`checkpointInterval ">`checkpoint_interval </span>= 60000`
  /// * <span pulumi-lang-nodejs="`minPauseBetweenCheckpoints " pulumi-lang-dotnet="`MinPauseBetweenCheckpoints " pulumi-lang-go="`minPauseBetweenCheckpoints " pulumi-lang-python="`min_pause_between_checkpoints " pulumi-lang-yaml="`minPauseBetweenCheckpoints " pulumi-lang-java="`minPauseBetweenCheckpoints ">`min_pause_between_checkpoints </span>= 5000`
  final String configurationType;

  /// Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
  final int? minPauseBetweenCheckpoints;

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
