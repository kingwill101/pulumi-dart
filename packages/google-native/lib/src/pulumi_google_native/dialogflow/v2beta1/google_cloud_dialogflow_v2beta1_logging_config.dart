// ignore_for_file: unused_element, unnecessary_cast

/// Defines logging behavior for conversation lifecycle events.
class GoogleCloudDialogflowV2beta1LoggingConfig {
  /// Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  final bool? enableStackdriverLogging;

  GoogleCloudDialogflowV2beta1LoggingConfig({
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

  factory GoogleCloudDialogflowV2beta1LoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1LoggingConfig(
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
