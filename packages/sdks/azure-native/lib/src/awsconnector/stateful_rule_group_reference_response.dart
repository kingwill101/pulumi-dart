// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_rule_group_override_response.dart';

/// Definition of StatefulRuleGroupReference
class StatefulRuleGroupReferenceResponse {
  /// Property override
  final StatefulRuleGroupOverrideResponse? override;
  /// Property priority
  final int? priority;
  /// A resource ARN.
  final String? resourceArn;

  /// Creates a new [StatefulRuleGroupReferenceResponse].
  /// [override] Property override
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  StatefulRuleGroupReferenceResponse({
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

  factory StatefulRuleGroupReferenceResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupReferenceResponse(
      override: map['override'] == null ? null : StatefulRuleGroupOverrideResponse.fromMap((map['override'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceArn: map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}

