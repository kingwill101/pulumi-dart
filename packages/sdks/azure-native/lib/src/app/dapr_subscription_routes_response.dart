// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_subscription_route_rule_response.dart';

/// Dapr PubSub Event Subscription Routes configuration.
class DaprSubscriptionRoutesResponse {
  /// The default path to deliver events that do not match any of the rules.
  final pulumi.Input<String>? default_;
  /// The list of Dapr PubSub Event Subscription Route Rules.
  final pulumi.Input<List<DaprSubscriptionRouteRuleResponse>>? rules;

  /// Creates a new [DaprSubscriptionRoutesResponse].
  /// [default_] The default path to deliver events that do not match any of the rules.
  /// [rules] The list of Dapr PubSub Event Subscription Route Rules.
  DaprSubscriptionRoutesResponse({
    this.default_,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DaprSubscriptionRouteRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DaprSubscriptionRouteRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaprSubscriptionRoutesResponse.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionRoutesResponse(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaprSubscriptionRouteRuleResponse>(guardedValue, (value) => DaprSubscriptionRouteRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

