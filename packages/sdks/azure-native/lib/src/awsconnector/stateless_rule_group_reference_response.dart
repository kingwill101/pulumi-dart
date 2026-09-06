// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatelessRuleGroupReference
class StatelessRuleGroupReferenceResponse {
  /// Property priority
  final pulumi.Input<int?>? priority;
  /// A resource ARN.
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [StatelessRuleGroupReferenceResponse].
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  const StatelessRuleGroupReferenceResponse({
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
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
