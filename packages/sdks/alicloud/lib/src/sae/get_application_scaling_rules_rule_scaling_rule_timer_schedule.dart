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
      atTime: pulumi.Input.fromValue(map['atTime'] as String),
      maxReplicas: pulumi.Input.fromValue(map['maxReplicas'] as int),
      minReplicas: pulumi.Input.fromValue(map['minReplicas'] as int),
      targetReplicas: pulumi.Input.fromValue(map['targetReplicas'] as int),
    );
  }
}

