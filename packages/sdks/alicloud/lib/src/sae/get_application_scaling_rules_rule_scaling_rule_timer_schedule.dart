// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleTimerSchedule {
  /// Time point. Format: `hours:minutes`.
  final pulumi.Input<String> atTime;
  /// The maximum number of instances.
  final pulumi.Input<int> maxReplicas;
  /// The minimum number of instances.
  final pulumi.Input<int> minReplicas;
  /// The number of target instances.
  final pulumi.Input<int> targetReplicas;

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
      atTime: (map['atTime'] as String).input(),
      maxReplicas: (map['maxReplicas'] as int).input(),
      minReplicas: (map['minReplicas'] as int).input(),
      targetReplicas: (map['targetReplicas'] as int).input(),
    );
  }
}

