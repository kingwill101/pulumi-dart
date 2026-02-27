// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_rule_action.dart';

/// The set of arguments for IngressRule.
class IngressRuleArgs {
  /// The action to take on matched requests.
  final pulumi.Input<IngressRuleAction>? action;
  final pulumi.Input<String> appId;

  /// An optional string description of this rule. This field has a maximum length of 400 characters.
  final pulumi.Input<String>? description;

  /// A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.
  final pulumi.Input<int>? priority;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. You can use the wildcard character "*" to match all IPs equivalent to "0/0" and "::/0" together. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently performed on addresses which are not properly truncated. For example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as 2001:db8::/32.
  final pulumi.Input<String>? sourceRange;

  IngressRuleArgs({
    this.action,
    required this.appId,
    this.description,
    this.priority,
    this.sourceRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] =
          pulumi.Input.mapOptionalInputValue<IngressRuleAction, String>(
              actionValue, (value) => value.value);
    }
    map['appId'] = appId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final sourceRangeValue = sourceRange;
    if (sourceRangeValue != null) {
      map['sourceRange'] = sourceRangeValue;
    }
    return map;
  }

  factory IngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return IngressRuleArgs(
      action: pulumi.Input.asOptionalInput<IngressRuleAction>(map['action']),
      appId: pulumi.Input.asInput<String>(map['appId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      sourceRange: pulumi.Input.asOptionalInput<String>(map['sourceRange']),
    );
  }
}
