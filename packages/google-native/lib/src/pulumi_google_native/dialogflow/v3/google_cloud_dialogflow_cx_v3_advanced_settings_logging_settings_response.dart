// ignore_for_file: unused_element, unnecessary_cast

/// Define behaviors on logging.
class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse {
  /// If true, DF Interaction logging is currently enabled.
  final bool enableInteractionLogging;

  /// If true, StackDriver logging is currently enabled.
  final bool enableStackdriverLogging;

  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse({
    required this.enableInteractionLogging,
    required this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableInteractionLogging'] = enableInteractionLogging;
    map['enableStackdriverLogging'] = enableStackdriverLogging;
    return map;
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse(
      enableInteractionLogging: map['enableInteractionLogging'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] as bool,
    );
  }
}
