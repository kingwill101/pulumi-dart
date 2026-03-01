// ignore_for_file: unused_element, unnecessary_cast

import 'redirect_rule_response.dart';
import 'routing_rule_condition_response.dart';

/// Definition of RoutingRule
class RoutingRuleResponse {
  /// Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  final RedirectRuleResponse? redirectRule;
  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  final RoutingRuleConditionResponse? routingRuleCondition;

  /// Creates a new [RoutingRuleResponse].
  /// [redirectRule] Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  /// [routingRuleCondition] A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  RoutingRuleResponse({
    this.redirectRule,
    this.routingRuleCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectRule': ?redirectRule == null ? null : redirectRule!.toMap(),
      'routingRuleCondition': ?routingRuleCondition == null ? null : routingRuleCondition!.toMap(),
    };
  }

  factory RoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleResponse(
      redirectRule: map['redirectRule'] == null ? null : RedirectRuleResponse.fromMap((map['redirectRule'] as Map).cast<String, dynamic>()),
      routingRuleCondition: map['routingRuleCondition'] == null ? null : RoutingRuleConditionResponse.fromMap((map['routingRuleCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

