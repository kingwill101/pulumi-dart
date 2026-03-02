// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_rule_group_override.dart';

/// Definition of StatefulRuleGroupReference
class StatefulRuleGroupReference {
  /// Property override
  final pulumi.Input<StatefulRuleGroupOverride>? override;
  /// Property priority
  final pulumi.Input<int>? priority;
  /// A resource ARN.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [StatefulRuleGroupReference].
  /// [override] Property override
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  StatefulRuleGroupReference({
    this.override,
    this.priority,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'override': ?pulumi.Input.mapOptionalInputValue<StatefulRuleGroupOverride, Map<String, dynamic>>(override, (value) => value.toMap()),
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatefulRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupReference(
      override: map['override'] == null ? null : (StatefulRuleGroupOverride.fromMap((map['override'] as Map).cast<String, dynamic>())).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
    );
  }
}

