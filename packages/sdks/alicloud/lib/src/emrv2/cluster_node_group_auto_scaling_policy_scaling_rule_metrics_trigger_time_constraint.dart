// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint {
  /// The end time for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? endTime;

  /// The start time for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint].
  /// [endTime] The end time for this scaling rule specific metrics trigger.
  /// [startTime] The start time for this scaling rule specific metrics trigger.
  ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': ?endTime, 'startTime': ?startTime};
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
