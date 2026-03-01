// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_rule_group_override.dart';

/// Definition of StatefulRuleGroupReference
class StatefulRuleGroupReference {
  /// Property override
  final StatefulRuleGroupOverride? override;
  /// Property priority
  final int? priority;
  /// A resource ARN.
  final String? resourceArn;

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
      'override': ?override == null ? null : override!.toMap(),
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatefulRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupReference(
      override: map['override'] == null ? null : StatefulRuleGroupOverride.fromMap((map['override'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceArn: map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}

