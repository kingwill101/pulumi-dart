// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_rule_response.dart';
import 'routing_rule_condition_response.dart';

/// Definition of RoutingRule
class RoutingRuleResponse {
  /// Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  final pulumi.Input<RedirectRuleResponse>? redirectRule;

  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  final pulumi.Input<RoutingRuleConditionResponse>? routingRuleCondition;

  /// Creates a new [RoutingRuleResponse].
  /// [redirectRule] Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return. Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  /// [routingRuleCondition] A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error. A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the ``/docs`` folder, redirect to the ``/documents`` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  RoutingRuleResponse({this.redirectRule, this.routingRuleCondition});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectRule':
          ?pulumi.Input.mapOptionalInputValue<
            RedirectRuleResponse,
            Map<String, dynamic>
          >(redirectRule, (value) => value.toMap()),
      'routingRuleCondition':
          ?pulumi.Input.mapOptionalInputValue<
            RoutingRuleConditionResponse,
            Map<String, dynamic>
          >(routingRuleCondition, (value) => value.toMap()),
    };
  }

  factory RoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleResponse(
      redirectRule: (() {
        final guardedValue = map['redirectRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RedirectRuleResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      routingRuleCondition: (() {
        final guardedValue = map['routingRuleCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoutingRuleConditionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
