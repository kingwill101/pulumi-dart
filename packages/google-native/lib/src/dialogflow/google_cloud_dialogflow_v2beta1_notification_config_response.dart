// ignore_for_file: unused_element, unnecessary_cast

/// Defines notification behavior.
class GoogleCloudDialogflowV2beta1NotificationConfigResponse {
  /// Format of message.
  final String messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  final String topic;

  /// Creates a new [GoogleCloudDialogflowV2beta1NotificationConfigResponse].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  GoogleCloudDialogflowV2beta1NotificationConfigResponse({
    required this.messageFormat,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageFormat'] = messageFormat;
    map['topic'] = topic;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1NotificationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1NotificationConfigResponse(
      messageFormat: map['messageFormat'] as String,
      topic: map['topic'] as String,
    );
  }
}
