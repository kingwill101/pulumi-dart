// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions.dart';

class PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition {
  /// An expression
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions? expressions;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition].
  /// [expressions] An expression
  PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?expressions == null ? null : expressions!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition(
      expressions: map['expressions'] == null ? null : PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions.fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}

