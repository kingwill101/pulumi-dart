// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BaselineStrategy resources.
class BaselineStrategyState {
  /// The ID of the baseline check policy.
  final pulumi.Input<String>? baselineStrategyId;
  /// Policy name.
  final pulumi.Input<String>? baselineStrategyName;
  /// The type of policy. Value:
  /// * **common**: standard policy
  /// * **custom**: custom policy
  final pulumi.Input<String>? customType;
  /// The detection period of the policy.
  final pulumi.Input<int>? cycleDays;
  /// The detection period of the policy. Value:
  /// * **0**: 0:00~06:00
  /// * **6**: 6:00~12:00
  /// * **12**: 12:00~18:00
  /// * **18**: 18:00~24:00
  final pulumi.Input<int>? cycleStartTime;
  /// The baseline check policy execution end time.
  final pulumi.Input<String>? endTime;
  /// Detection item subtype.
  final pulumi.Input<String>? riskSubTypeName;
  /// The baseline check policy start time.
  final pulumi.Input<String>? startTime;
  /// The method of adding assets that take effect from the policy. Value:
  /// * **groupId**: Added by asset group.
  /// * **uuid**: Add by single asset.
  final pulumi.Input<String>? targetType;

  /// Creates a new [BaselineStrategyState].
  /// [baselineStrategyId] The ID of the baseline check policy.
  /// [baselineStrategyName] Policy name.
  /// [customType] The type of policy. Value:
  /// [cycleDays] The detection period of the policy.
  /// [cycleStartTime] The detection period of the policy. Value:
  /// [endTime] The baseline check policy execution end time.
  /// [riskSubTypeName] Detection item subtype.
  /// [startTime] The baseline check policy start time.
  /// [targetType] The method of adding assets that take effect from the policy. Value:
  BaselineStrategyState({
    this.baselineStrategyId,
    this.baselineStrategyName,
    this.customType,
    this.cycleDays,
    this.cycleStartTime,
    this.endTime,
    this.riskSubTypeName,
    this.startTime,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineStrategyId': ?baselineStrategyId,
      'baselineStrategyName': ?baselineStrategyName,
      'customType': ?customType,
      'cycleDays': ?cycleDays,
      'cycleStartTime': ?cycleStartTime,
      'endTime': ?endTime,
      'riskSubTypeName': ?riskSubTypeName,
      'startTime': ?startTime,
      'targetType': ?targetType,
    };
  }

  factory BaselineStrategyState.fromMap(Map<String, dynamic> map) {
    return BaselineStrategyState(
      baselineStrategyId: map['baselineStrategyId'] == null ? null : (map['baselineStrategyId'] as String).input(),
      baselineStrategyName: map['baselineStrategyName'] == null ? null : (map['baselineStrategyName'] as String).input(),
      customType: map['customType'] == null ? null : (map['customType'] as String).input(),
      cycleDays: map['cycleDays'] == null ? null : (map['cycleDays'] as int).input(),
      cycleStartTime: map['cycleStartTime'] == null ? null : (map['cycleStartTime'] as int).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      riskSubTypeName: map['riskSubTypeName'] == null ? null : (map['riskSubTypeName'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

