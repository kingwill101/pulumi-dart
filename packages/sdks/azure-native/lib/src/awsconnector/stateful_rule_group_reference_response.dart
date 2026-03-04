// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_rule_group_override_response.dart';

/// Definition of StatefulRuleGroupReference
class StatefulRuleGroupReferenceResponse {
  /// Property override
  final pulumi.Input<StatefulRuleGroupOverrideResponse>? override;

  /// Property priority
  final pulumi.Input<int>? priority;

  /// A resource ARN.
  final pulumi.Input<String>? resourceArn;

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
      'override':
          ?pulumi.Input.mapOptionalInputValue<
            StatefulRuleGroupOverrideResponse,
            Map<String, dynamic>
          >(override, (value) => value.toMap()),
      'priority': ?priority,
      'resourceArn': ?resourceArn,
    };
  }

  factory StatefulRuleGroupReferenceResponse.fromMap(Map<String, dynamic> map) {
    return StatefulRuleGroupReferenceResponse(
      override: (() {
        final guardedValue = map['override'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StatefulRuleGroupOverrideResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceArn: (() {
        final guardedValue = map['resourceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
