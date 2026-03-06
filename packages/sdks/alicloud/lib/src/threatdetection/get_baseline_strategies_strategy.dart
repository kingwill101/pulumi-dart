// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBaselineStrategiesStrategy {
  /// The ID of the baseline check policy.
  final pulumi.Input<String> baselineStrategyId;
  /// Policy name.
  final pulumi.Input<String> baselineStrategyName;
  /// The type of policy. Value:-**common**: standard policy-**custom**: custom policy
  final pulumi.Input<String> customType;
  /// The detection period of the policy.
  final pulumi.Input<int> cycleDays;
  /// The detection period of the policy. Value:
  /// * **0**: 0:00~06:00
  /// * **6**: 6:00~12:00
  /// * *12**: 12:00~18:00
  /// * **18**: 18:00~24:00
  final pulumi.Input<int> cycleStartTime;
  /// The baseline check policy execution end time.
  final pulumi.Input<String> endTime;
  /// The ID of the baseline check policy.
  final pulumi.Input<String> id;
  final pulumi.Input<String> riskSubTypeName;
  /// The baseline check policy start time.
  final pulumi.Input<String> startTime;
  final pulumi.Input<String> targetType;

  /// Creates a new [GetBaselineStrategiesStrategy].
  /// [baselineStrategyId] The ID of the baseline check policy.
  /// [baselineStrategyName] Policy name.
  /// [customType] The type of policy. Value:-**common**: standard policy-**custom**: custom policy
  /// [cycleDays] The detection period of the policy.
  /// [cycleStartTime] The detection period of the policy. Value:
  /// [endTime] The baseline check policy execution end time.
  /// [id] The ID of the baseline check policy.
  /// [riskSubTypeName] Required.
  /// [startTime] The baseline check policy start time.
  /// [targetType] Required.
  const GetBaselineStrategiesStrategy({
    required this.baselineStrategyId,
    required this.baselineStrategyName,
    required this.customType,
    required this.cycleDays,
    required this.cycleStartTime,
    required this.endTime,
    required this.id,
    required this.riskSubTypeName,
    required this.startTime,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineStrategyId': baselineStrategyId,
      'baselineStrategyName': baselineStrategyName,
      'customType': customType,
      'cycleDays': cycleDays,
      'cycleStartTime': cycleStartTime,
      'endTime': endTime,
      'id': id,
      'riskSubTypeName': riskSubTypeName,
      'startTime': startTime,
      'targetType': targetType,
    };
  }

  factory GetBaselineStrategiesStrategy.fromMap(Map<String, dynamic> map) {
    return GetBaselineStrategiesStrategy(
      baselineStrategyId: pulumi.Input.fromValue(map['baselineStrategyId'] as String),
      baselineStrategyName: pulumi.Input.fromValue(map['baselineStrategyName'] as String),
      customType: pulumi.Input.fromValue(map['customType'] as String),
      cycleDays: pulumi.Input.fromValue(map['cycleDays'] as int),
      cycleStartTime: pulumi.Input.fromValue(map['cycleStartTime'] as int),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      riskSubTypeName: pulumi.Input.fromValue(map['riskSubTypeName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

