// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileLoggingConfig {
  /// Whether to log conversation events
  final bool? enableStackdriverLogging;

  /// Creates a new [ConversationProfileLoggingConfig].
  /// [enableStackdriverLogging] Whether to log conversation events
  ConversationProfileLoggingConfig({
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    return map;
  }

  factory ConversationProfileLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileLoggingConfig(
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
