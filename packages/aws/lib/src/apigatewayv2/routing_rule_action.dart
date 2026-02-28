// ignore_for_file: unused_element, unnecessary_cast

import 'routing_rule_action_invoke_api.dart';

class RoutingRuleAction {
  /// Configuration to invoke a stage of a target API. Only REST APIs are supported. See below.
  final RoutingRuleActionInvokeApi invokeApi;

  /// Creates a new [RoutingRuleAction].
  /// [invokeApi] Configuration to invoke a stage of a target API. Only REST APIs are supported. See below.
  RoutingRuleAction({
    required this.invokeApi,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['invokeApi'] = invokeApi.toMap();
    return map;
  }

  factory RoutingRuleAction.fromMap(Map<String, dynamic> map) {
    return RoutingRuleAction(
      invokeApi: RoutingRuleActionInvokeApi.fromMap(
          (map['invokeApi'] as Map).cast<String, dynamic>()),
    );
  }
}
