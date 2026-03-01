// ignore_for_file: unused_element, unnecessary_cast

/// Define behaviors on logging.
class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings {
  /// If true, DF Interaction logging is currently enabled.
  final bool? enableInteractionLogging;

  /// If true, StackDriver logging is currently enabled.
  final bool? enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings].
  /// [enableInteractionLogging] If true, DF Interaction logging is currently enabled.
  /// [enableStackdriverLogging] If true, StackDriver logging is currently enabled.
  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings({
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInteractionLogging': ?enableInteractionLogging,
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings(
      enableInteractionLogging: map['enableInteractionLogging'] == null
          ? null
          : map['enableInteractionLogging'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
