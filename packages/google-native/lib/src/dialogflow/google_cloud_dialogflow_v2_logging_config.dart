// ignore_for_file: unused_element, unnecessary_cast

/// Defines logging behavior for conversation lifecycle events.
class GoogleCloudDialogflowV2LoggingConfig {
  /// Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  final bool? enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowV2LoggingConfig].
  /// [enableStackdriverLogging] Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  GoogleCloudDialogflowV2LoggingConfig({this.enableStackdriverLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory GoogleCloudDialogflowV2LoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2LoggingConfig(
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
