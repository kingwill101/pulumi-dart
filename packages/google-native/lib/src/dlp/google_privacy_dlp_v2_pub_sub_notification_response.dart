// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_data_profile_pub_sub_condition_response.dart';

/// Send a Pub/Sub message into the given Pub/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of `DataProfilePubSubMessage`.
class GooglePrivacyDlpV2PubSubNotificationResponse {
  /// How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  final String detailOfMessage;

  /// The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  final String event;

  /// Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  final GooglePrivacyDlpV2DataProfilePubSubConditionResponse pubsubCondition;

  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final String topic;

  /// Creates a new [GooglePrivacyDlpV2PubSubNotificationResponse].
  /// [detailOfMessage] How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  /// [event] The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  /// [pubsubCondition] Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  /// [topic] Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  GooglePrivacyDlpV2PubSubNotificationResponse({
    required this.detailOfMessage,
    required this.event,
    required this.pubsubCondition,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailOfMessage': detailOfMessage,
      'event': event,
      'pubsubCondition': pubsubCondition.toMap(),
      'topic': topic,
    };
  }

  factory GooglePrivacyDlpV2PubSubNotificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2PubSubNotificationResponse(
      detailOfMessage: map['detailOfMessage'] as String,
      event: map['event'] as String,
      pubsubCondition:
          GooglePrivacyDlpV2DataProfilePubSubConditionResponse.fromMap(
            (map['pubsubCondition'] as Map).cast<String, dynamic>(),
          ),
      topic: map['topic'] as String,
    );
  }
}
