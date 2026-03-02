// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_rule.dart';
import 'routing_rule_condition.dart';

/// Definition of RoutingRule
class RoutingRule {
  /// Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  final pulumi.Input<RedirectRule>? redirectRule;
  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  final pulumi.Input<RoutingRuleCondition>? routingRuleCondition;

  /// Creates a new [RoutingRule].
  /// [redirectRule] Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  /// [routingRuleCondition] A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  RoutingRule({
    this.redirectRule,
    this.routingRuleCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectRule': ?pulumi.Input.mapOptionalInputValue<RedirectRule, Map<String, dynamic>>(redirectRule, (value) => value.toMap()),
      'routingRuleCondition': ?pulumi.Input.mapOptionalInputValue<RoutingRuleCondition, Map<String, dynamic>>(routingRuleCondition, (value) => value.toMap()),
    };
  }

  factory RoutingRule.fromMap(Map<String, dynamic> map) {
    return RoutingRule(
      redirectRule: map['redirectRule'] == null ? null : (RedirectRule.fromMap((map['redirectRule']! as Map).cast<String, dynamic>())).input(),
      routingRuleCondition: map['routingRuleCondition'] == null ? null : (RoutingRuleCondition.fromMap((map['routingRuleCondition']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

