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
  const BaselineStrategyState({
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
      baselineStrategyId: (() { final guardedValue = map['baselineStrategyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baselineStrategyName: (() { final guardedValue = map['baselineStrategyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customType: (() { final guardedValue = map['customType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cycleDays: (() { final guardedValue = map['cycleDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cycleStartTime: (() { final guardedValue = map['cycleStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskSubTypeName: (() { final guardedValue = map['riskSubTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

