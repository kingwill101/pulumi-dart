// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration {
  /// When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? allowNonRestoredState;

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
