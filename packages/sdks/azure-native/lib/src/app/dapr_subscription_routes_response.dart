// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_subscription_route_rule_response.dart';

/// Dapr PubSub Event Subscription Routes configuration.
class DaprSubscriptionRoutesResponse {
  /// The default path to deliver events that do not match any of the rules.
  final String? default_;
  /// The list of Dapr PubSub Event Subscription Route Rules.
  final List<DaprSubscriptionRouteRuleResponse>? rules;

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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<DaprSubscriptionRouteRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory DaprSubscriptionRoutesResponse.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionRoutesResponse(
      default_: map['default'] == null ? null : map['default'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<DaprSubscriptionRouteRuleResponse>(map['rules'], (value) => DaprSubscriptionRouteRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

