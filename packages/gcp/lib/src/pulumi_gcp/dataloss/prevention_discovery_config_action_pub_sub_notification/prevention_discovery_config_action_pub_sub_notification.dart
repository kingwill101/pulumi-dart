// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_action_pub_sub_notification_pubsub_condition/prevention_discovery_config_action_pub_sub_notification_pubsub_condition.dart';

class PreventionDiscoveryConfigActionPubSubNotification {
  /// How much data to include in the pub/sub message.
  /// Possible values are: `TABLE_PROFILE`, `RESOURCE_NAME`.
  final String? detailOfMessage;

  /// The type of event that triggers a Pub/Sub. At most one PubSubNotification per EventType is permitted.
  /// Possible values are: `NEW_PROFILE`, `CHANGED_PROFILE`, `SCORE_INCREASED`, `ERROR_CHANGED`.
  final String? event;

  /// Conditions for triggering pubsub
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition?
      pubsubCondition;

  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final String? topic;

  PreventionDiscoveryConfigActionPubSubNotification({
    this.detailOfMessage,
    this.event,
    this.pubsubCondition,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailOfMessageValue = detailOfMessage;
    if (detailOfMessageValue != null) {
      map['detailOfMessage'] = detailOfMessageValue;
    }
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue;
    }
    final pubsubConditionValue = pubsubCondition;
    if (pubsubConditionValue != null) {
      map['pubsubCondition'] = pubsubConditionValue.toMap();
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigActionPubSubNotification.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotification(
      detailOfMessage: map['detailOfMessage'] == null
          ? null
          : map['detailOfMessage'] as String,
      event: map['event'] == null ? null : map['event'] as String,
      pubsubCondition: map['pubsubCondition'] == null
          ? null
          : PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition
              .fromMap((map['pubsubCondition'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
