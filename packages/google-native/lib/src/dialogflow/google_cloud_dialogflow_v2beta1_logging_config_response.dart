// ignore_for_file: unused_element, unnecessary_cast

/// Defines logging behavior for conversation lifecycle events.
class GoogleCloudDialogflowV2beta1LoggingConfigResponse {
  /// Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  final bool enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowV2beta1LoggingConfigResponse].
  /// [enableStackdriverLogging] Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  GoogleCloudDialogflowV2beta1LoggingConfigResponse({
    required this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableStackdriverLogging'] = enableStackdriverLogging;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1LoggingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1LoggingConfigResponse(
      enableStackdriverLogging: map['enableStackdriverLogging'] as bool,
    );
  }
}
