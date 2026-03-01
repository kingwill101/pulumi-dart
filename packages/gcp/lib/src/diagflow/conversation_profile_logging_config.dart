// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileLoggingConfig {
  /// Whether to log conversation events
  final bool? enableStackdriverLogging;

  /// Creates a new [ConversationProfileLoggingConfig].
  /// [enableStackdriverLogging] Whether to log conversation events
  ConversationProfileLoggingConfig({this.enableStackdriverLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory ConversationProfileLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileLoggingConfig(
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
