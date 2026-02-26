// ignore_for_file: unused_element, unnecessary_cast

class AppLoggingSettingsConversationLoggingSettings {
  /// Whether to disable conversation logging for the sessions.
  final bool? disableConversationLogging;

  AppLoggingSettingsConversationLoggingSettings({
    this.disableConversationLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableConversationLoggingValue = disableConversationLogging;
    if (disableConversationLoggingValue != null) {
      map['disableConversationLogging'] = disableConversationLoggingValue;
    }
    return map;
  }

  factory AppLoggingSettingsConversationLoggingSettings.fromMap(
      Map<String, dynamic> map) {
    return AppLoggingSettingsConversationLoggingSettings(
      disableConversationLogging: map['disableConversationLogging'] == null
          ? null
          : map['disableConversationLogging'] as bool,
    );
  }
}
