// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_subscription_route_rule.dart';

/// Dapr PubSub Event Subscription Routes configuration.
class DaprSubscriptionRoutes {
  /// The default path to deliver events that do not match any of the rules.
  final pulumi.Input<String>? default_;
  /// The list of Dapr PubSub Event Subscription Route Rules.
  final pulumi.Input<List<DaprSubscriptionRouteRule>>? rules;

  /// Creates a new [DaprSubscriptionRoutes].
  /// [default_] The default path to deliver events that do not match any of the rules.
  /// [rules] The list of Dapr PubSub Event Subscription Route Rules.
  DaprSubscriptionRoutes({
    this.default_,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DaprSubscriptionRouteRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DaprSubscriptionRouteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaprSubscriptionRoutes.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionRoutes(
      default_: map['default'] == null ? null : (map['default']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<DaprSubscriptionRouteRule>(map['rules']!, (value) => DaprSubscriptionRouteRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

