// ignore_for_file: unused_element, unnecessary_cast


class ApplicationScalingRuleScalingRuleTimerSchedule {
  /// Trigger point in time. When supporting format: minutes, for example: `08:00`.
  final String? atTime;
  final int? maxReplicas;
  final int? minReplicas;
  /// This parameter can specify the number of instances to be applied or the minimum number of surviving instances per deployment. value range [1,50]. > **NOTE:** The attribute is valid when the attribute `scaling_rule_type` is `timing`.
  final int? targetReplicas;

  /// Creates a new [ApplicationScalingRuleScalingRuleTimerSchedule].
  /// [atTime] Trigger point in time. When supporting format: minutes, for example: `08:00`.
  /// [maxReplicas] Optional.
  /// [minReplicas] Optional.
  /// [targetReplicas] This parameter can specify the number of instances to be applied or the minimum number of surviving instances per deployment. value range [1,50]. > **NOTE:** The attribute is valid when the attribute `scaling_rule_type` is `timing`.
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

  factory ApplicationScalingRuleScalingRuleTimerSchedule.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleTimerSchedule(
      atTime: map['atTime'] == null ? null : map['atTime'] as String,
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      targetReplicas: map['targetReplicas'] == null ? null : map['targetReplicas'] as int,
    );
  }
}

