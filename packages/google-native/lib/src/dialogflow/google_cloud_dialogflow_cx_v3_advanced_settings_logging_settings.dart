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
    final map = <String, dynamic>{};
    final enableInteractionLoggingValue = enableInteractionLogging;
    if (enableInteractionLoggingValue != null) {
      map['enableInteractionLogging'] = enableInteractionLoggingValue;
    }
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromMap(
      Map<String, dynamic> map) {
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
