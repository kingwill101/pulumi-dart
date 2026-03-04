// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationScalingRuleScalingRuleTimerSchedule {
  /// Trigger point in time. When supporting format: minutes, for example: `08:00`.
  final pulumi.Input<String>? atTime;
  final pulumi.Input<int>? maxReplicas;
  final pulumi.Input<int>? minReplicas;

  /// This parameter can specify the number of instances to be applied or the minimum number of surviving instances per deployment. value range [1,50]. &gt; **NOTE:** The attribute is valid when the attribute `scaling_rule_type` is `timing`.
  final pulumi.Input<int>? targetReplicas;

  /// Creates a new [ApplicationScalingRuleScalingRuleTimerSchedule].
  /// [atTime] Trigger point in time. When supporting format: minutes, for example: `08:00`.
  /// [maxReplicas] Optional.
  /// [minReplicas] Optional.
  /// [targetReplicas] This parameter can specify the number of instances to be applied or the minimum number of surviving instances per deployment. value range [1,50]. &gt; **NOTE:** The attribute is valid when the attribute `scaling_rule_type` is `timing`.
  ApplicationScalingRuleScalingRuleTimerSchedule({
    this.atTime,
    this.maxReplicas,
    this.minReplicas,
    this.targetReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atTime': ?atTime,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'targetReplicas': ?targetReplicas,
    };
  }

  factory ApplicationScalingRuleScalingRuleTimerSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationScalingRuleScalingRuleTimerSchedule(
      atTime: (() {
        final guardedValue = map['atTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxReplicas: (() {
        final guardedValue = map['maxReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minReplicas: (() {
        final guardedValue = map['minReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetReplicas: (() {
        final guardedValue = map['targetReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
