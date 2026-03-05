// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatelessRuleGroupReference
class StatelessRuleGroupReference {
  /// Property priority
  final pulumi.Input<int>? priority;
  /// A resource ARN.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [StatelessRuleGroupReference].
  /// [priority] Property priority
  /// [resourceArn] A resource ARN.
  StatelessRuleGroupReference({
    this.priority,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatelessRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return StatelessRuleGroupReference(
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

