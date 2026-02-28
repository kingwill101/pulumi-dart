// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_notification_config_message_format.dart';

/// Defines notification behavior.
class GoogleCloudDialogflowV2beta1NotificationConfig {
  /// Format of message.
  final GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat?
      messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  final String? topic;

  /// Creates a new [GoogleCloudDialogflowV2beta1NotificationConfig].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  GoogleCloudDialogflowV2beta1NotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageFormatValue = messageFormat;
    if (messageFormatValue != null) {
      map['messageFormat'] = messageFormatValue.value;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1NotificationConfig(
      messageFormat: map['messageFormat'] == null
          ? null
          : GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat
              .fromValue(map['messageFormat'] as String),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
