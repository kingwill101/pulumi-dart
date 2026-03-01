// ignore_for_file: unused_element, unnecessary_cast


class GetBaselineStrategiesStrategy {
  /// The ID of the baseline check policy.
  final String baselineStrategyId;
  /// Policy name.
  final String baselineStrategyName;
  /// The type of policy. Value:-**common**: standard policy-**custom**: custom policy
  final String customType;
  /// The detection period of the policy.
  final int cycleDays;
  /// The detection period of the policy. Value:
  /// * **0**: 0:00~06:00
  /// * **6**: 6:00~12:00
  /// * *12**: 12:00~18:00
  /// * **18**: 18:00~24:00
  final int cycleStartTime;
  /// The baseline check policy execution end time.
  final String endTime;
  /// The ID of the baseline check policy.
  final String id;
  final String riskSubTypeName;
  /// The baseline check policy start time.
  final String startTime;
  final String targetType;

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
  GetBaselineStrategiesStrategy({
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
      baselineStrategyId: map['baselineStrategyId'] as String,
      baselineStrategyName: map['baselineStrategyName'] as String,
      customType: map['customType'] as String,
      cycleDays: map['cycleDays'] as int,
      cycleStartTime: map['cycleStartTime'] as int,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      riskSubTypeName: map['riskSubTypeName'] as String,
      startTime: map['startTime'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

