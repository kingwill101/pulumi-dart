// ignore_for_file: unused_element, unnecessary_cast


class AppLoggingSettingsConversationLoggingSettings {
  /// Whether to disable conversation logging for the sessions.
  final bool? disableConversationLogging;

  /// Creates a new [AppLoggingSettingsConversationLoggingSettings].
  /// [disableConversationLogging] Whether to disable conversation logging for the sessions.
  AppLoggingSettingsConversationLoggingSettings({
    this.disableConversationLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableConversationLogging': ?disableConversationLogging,
    };
  }

  factory AppLoggingSettingsConversationLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsConversationLoggingSettings(
      disableConversationLogging: map['disableConversationLogging'] == null ? null : map['disableConversationLogging'] as bool,
    );
  }
}

