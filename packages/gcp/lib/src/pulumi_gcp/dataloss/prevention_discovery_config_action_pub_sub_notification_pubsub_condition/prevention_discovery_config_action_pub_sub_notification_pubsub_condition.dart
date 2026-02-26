// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions/prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions.dart';

class PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition {
  /// An expression
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions?
      expressions;

  PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionsValue = expressions;
    if (expressionsValue != null) {
      map['expressions'] = expressionsValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition(
      expressions: map['expressions'] == null
          ? null
          : PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions
              .fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}
