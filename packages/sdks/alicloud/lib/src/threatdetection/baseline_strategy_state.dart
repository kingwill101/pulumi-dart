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
    pulumi.Output<String>? baselineStrategyId,
    pulumi.Output<String>? baselineStrategyName,
    pulumi.Output<String>? customType,
    pulumi.Output<int>? cycleDays,
    pulumi.Output<int>? cycleStartTime,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? riskSubTypeName,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? targetType,
  }) :
      baselineStrategyId = pulumi.Input.asOptionalInput<String>(baselineStrategyId),
      baselineStrategyName = pulumi.Input.asOptionalInput<String>(baselineStrategyName),
      customType = pulumi.Input.asOptionalInput<String>(customType),
      cycleDays = pulumi.Input.asOptionalInput<int>(cycleDays),
      cycleStartTime = pulumi.Input.asOptionalInput<int>(cycleStartTime),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      riskSubTypeName = pulumi.Input.asOptionalInput<String>(riskSubTypeName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

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
      baselineStrategyId: map['baselineStrategyId'] == null ? null : pulumi.Output.create<String>(map['baselineStrategyId'] as String),
      baselineStrategyName: map['baselineStrategyName'] == null ? null : pulumi.Output.create<String>(map['baselineStrategyName'] as String),
      customType: map['customType'] == null ? null : pulumi.Output.create<String>(map['customType'] as String),
      cycleDays: map['cycleDays'] == null ? null : pulumi.Output.create<int>(map['cycleDays'] as int),
      cycleStartTime: map['cycleStartTime'] == null ? null : pulumi.Output.create<int>(map['cycleStartTime'] as int),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      riskSubTypeName: map['riskSubTypeName'] == null ? null : pulumi.Output.create<String>(map['riskSubTypeName'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

