// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_data_profile_pub_sub_condition.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_detail_of_message.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_event.dart';

/// Send a Pub/Sub message into the given Pub/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of `DataProfilePubSubMessage`.
class GooglePrivacyDlpV2PubSubNotification {
  /// How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  final GooglePrivacyDlpV2PubSubNotificationDetailOfMessage? detailOfMessage;
  /// The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  final GooglePrivacyDlpV2PubSubNotificationEvent? event;
  /// Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  final GooglePrivacyDlpV2DataProfilePubSubCondition? pubsubCondition;
  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final String? topic;

  /// Creates a new [GooglePrivacyDlpV2PubSubNotification].
  /// [detailOfMessage] How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  /// [event] The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  /// [pubsubCondition] Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  /// [topic] Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  GooglePrivacyDlpV2PubSubNotification({
    this.detailOfMessage,
    this.event,
    this.pubsubCondition,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailOfMessage': ?detailOfMessage == null ? null : detailOfMessage!.value,
      'event': ?event == null ? null : event!.value,
      'pubsubCondition': ?pubsubCondition == null ? null : pubsubCondition!.toMap(),
      'topic': ?topic,
    };
  }

  factory GooglePrivacyDlpV2PubSubNotification.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubNotification(
      detailOfMessage: map['detailOfMessage'] == null ? null : GooglePrivacyDlpV2PubSubNotificationDetailOfMessage.fromValue(map['detailOfMessage'] as String),
      event: map['event'] == null ? null : GooglePrivacyDlpV2PubSubNotificationEvent.fromValue(map['event'] as String),
      pubsubCondition: map['pubsubCondition'] == null ? null : GooglePrivacyDlpV2DataProfilePubSubCondition.fromMap((map['pubsubCondition'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

