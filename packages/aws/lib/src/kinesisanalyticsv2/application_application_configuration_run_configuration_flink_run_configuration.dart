// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration {
  /// When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is `false`.
  final bool? allowNonRestoredState;

  /// Creates a new [ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration].
  /// [allowNonRestoredState] When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is `false`.
  ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration({
    this.allowNonRestoredState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowNonRestoredStateValue = allowNonRestoredState;
    if (allowNonRestoredStateValue != null) {
      map['allowNonRestoredState'] = allowNonRestoredStateValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration(
      allowNonRestoredState: map['allowNonRestoredState'] == null
          ? null
          : map['allowNonRestoredState'] as bool,
    );
  }
}
