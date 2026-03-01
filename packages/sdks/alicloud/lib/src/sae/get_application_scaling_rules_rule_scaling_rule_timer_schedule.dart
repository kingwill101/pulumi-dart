// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationScalingRulesRuleScalingRuleTimerSchedule {
  /// Time point. Format: `hours:minutes`.
  final String atTime;
  /// The maximum number of instances.
  final int maxReplicas;
  /// The minimum number of instances.
  final int minReplicas;
  /// The number of target instances.
  final int targetReplicas;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleTimerSchedule].
  /// [atTime] Time point. Format: `hours:minutes`.
  /// [maxReplicas] The maximum number of instances.
  /// [minReplicas] The minimum number of instances.
  /// [targetReplicas] The number of target instances.
  GetApplicationScalingRulesRuleScalingRuleTimerSchedule({
    required this.atTime,
    required this.maxReplicas,
    required this.minReplicas,
    required this.targetReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atTime': atTime,
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
      'targetReplicas': targetReplicas,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleTimerSchedule.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleTimerSchedule(
      atTime: map['atTime'] as String,
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] as int,
      targetReplicas: map['targetReplicas'] as int,
    );
  }
}

