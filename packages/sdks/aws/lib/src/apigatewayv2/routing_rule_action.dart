// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_action_invoke_api.dart';

class RoutingRuleAction {
  /// Configuration to invoke a stage of a target API. Only REST APIs are supported. See below.
  final pulumi.Input<RoutingRuleActionInvokeApi> invokeApi;

  /// Creates a new [RoutingRuleAction].
  /// [invokeApi] Configuration to invoke a stage of a target API. Only REST APIs are supported. See below.
  RoutingRuleAction({
    required this.invokeApi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invokeApi': pulumi.Input.mapInputValue<RoutingRuleActionInvokeApi, Map<String, dynamic>>(invokeApi, (value) => value.toMap()),
    };
  }

  factory RoutingRuleAction.fromMap(Map<String, dynamic> map) {
    return RoutingRuleAction(
      invokeApi: (RoutingRuleActionInvokeApi.fromMap((map['invokeApi'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

