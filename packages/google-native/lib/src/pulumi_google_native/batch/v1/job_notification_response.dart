// ignore_for_file: unused_element, unnecessary_cast

import 'message_response.dart';

/// Notification configurations.
class JobNotificationResponse {
  /// The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.
  final MessageResponse message;

  /// The Pub/Sub topic where notifications like the job state changes will be published. The topic must exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.
  final String pubsubTopic;

  JobNotificationResponse({
    required this.message,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message.toMap();
    map['pubsubTopic'] = pubsubTopic;
    return map;
  }

  factory JobNotificationResponse.fromMap(Map<String, dynamic> map) {
    return JobNotificationResponse(
      message: MessageResponse.fromMap(
          (map['message'] as Map).cast<String, dynamic>()),
      pubsubTopic: map['pubsubTopic'] as String,
    );
  }
}
