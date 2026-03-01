// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions_condition.dart';

class PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions {
  /// Conditions to apply to the expression
  /// Structure is documented below.
  final List<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition>? conditions;
  /// The operator to apply to the collection of conditions
  /// Possible values are: `OR`, `AND`.
  final String? logicalOperator;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions].
  /// [conditions] Conditions to apply to the expression
  /// [logicalOperator] The operator to apply to the collection of conditions
  PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'logicalOperator': ?logicalOperator,
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition>(map['conditions'], (value) => PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition.fromMap((value as Map).cast<String, dynamic>())),
      logicalOperator: map['logicalOperator'] == null ? null : map['logicalOperator'] as String,
    );
  }
}

