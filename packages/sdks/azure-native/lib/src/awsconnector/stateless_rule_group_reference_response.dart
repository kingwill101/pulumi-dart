// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatelessRuleGroupReference
class StatelessRuleGroupReferenceResponse {
  /// Property priority
  final pulumi.Input<int>? priority;
  /// A resource ARN.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [StatelessRuleGroupReferenceResponse].
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  StatelessRuleGroupReferenceResponse({
    this.priority,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatelessRuleGroupReferenceResponse.fromMap(Map<String, dynamic> map) {
    return StatelessRuleGroupReferenceResponse(
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn']! as String).input(),
    );
  }
}

