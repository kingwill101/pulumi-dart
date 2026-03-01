// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_baseline_strategy_baseline_strategy_args_doc}
/// The set of arguments for BaselineStrategy.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_baseline_strategy_baseline_strategy_args_doc}
class BaselineStrategyArgs {
  /// Policy name.
  final pulumi.Input<String> baselineStrategyName;
  /// The type of policy. Value:
  /// * **common**: standard policy
  /// * **custom**: custom policy
  final pulumi.Input<String> customType;
  /// The detection period of the policy.
  final pulumi.Input<int> cycleDays;
  /// The detection period of the policy. Value:
  /// * **0**: 0:00~06:00
  /// * **6**: 6:00~12:00
  /// * **12**: 12:00~18:00
  /// * **18**: 18:00~24:00
  final pulumi.Input<int>? cycleStartTime;
  /// The baseline check policy execution end time.
  final pulumi.Input<String> endTime;
  /// Detection item subtype.
  final pulumi.Input<String> riskSubTypeName;
  /// The baseline check policy start time.
  final pulumi.Input<String> startTime;
  /// The method of adding assets that take effect from the policy. Value:
  /// * **groupId**: Added by asset group.
  /// * **uuid**: Add by single asset.
  final pulumi.Input<String> targetType;

  /// Creates a new [BaselineStrategyArgs].
  /// [baselineStrategyName] Policy name.
  /// [customType] The type of policy. Value:
  /// [cycleDays] The detection period of the policy.
  /// [cycleStartTime] The detection period of the policy. Value:
  /// [endTime] The baseline check policy execution end time.
  /// [riskSubTypeName] Detection item subtype.
  /// [startTime] The baseline check policy start time.
  /// [targetType] The method of adding assets that take effect from the policy. Value:
  BaselineStrategyArgs({
    required pulumi.Output<String> baselineStrategyName,
    required pulumi.Output<String> customType,
    required pulumi.Output<int> cycleDays,
    pulumi.Output<int>? cycleStartTime,
    required pulumi.Output<String> endTime,
    required pulumi.Output<String> riskSubTypeName,
    required pulumi.Output<String> startTime,
    required pulumi.Output<String> targetType,
  }) :
      baselineStrategyName = pulumi.Input.asInput<String>(baselineStrategyName),
      customType = pulumi.Input.asInput<String>(customType),
      cycleDays = pulumi.Input.asInput<int>(cycleDays),
      cycleStartTime = pulumi.Input.asOptionalInput<int>(cycleStartTime),
      endTime = pulumi.Input.asInput<String>(endTime),
      riskSubTypeName = pulumi.Input.asInput<String>(riskSubTypeName),
      startTime = pulumi.Input.asInput<String>(startTime),
      targetType = pulumi.Input.asInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineStrategyName': baselineStrategyName,
      'customType': customType,
      'cycleDays': cycleDays,
      'cycleStartTime': ?cycleStartTime,
      'endTime': endTime,
      'riskSubTypeName': riskSubTypeName,
      'startTime': startTime,
      'targetType': targetType,
    };
  }

  factory BaselineStrategyArgs.fromMap(Map<String, dynamic> map) {
    return BaselineStrategyArgs(
      baselineStrategyName: pulumi.Output.create<String>(map['baselineStrategyName'] as String),
      customType: pulumi.Output.create<String>(map['customType'] as String),
      cycleDays: pulumi.Output.create<int>(map['cycleDays'] as int),
      cycleStartTime: map['cycleStartTime'] == null ? null : pulumi.Output.create<int>(map['cycleStartTime'] as int),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      riskSubTypeName: pulumi.Output.create<String>(map['riskSubTypeName'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
      targetType: pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

