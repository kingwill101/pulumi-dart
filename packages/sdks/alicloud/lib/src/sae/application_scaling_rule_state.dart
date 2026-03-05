// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_metric.dart';
import 'application_scaling_rule_scaling_rule_timer.dart';

/// Input properties used for looking up and filtering ApplicationScalingRule resources.
class ApplicationScalingRuleState {
  /// Application ID.
  final pulumi.Input<String>? appId;
  /// The min ready instance ratio.
  final pulumi.Input<int>? minReadyInstanceRatio;
  /// The min ready instances.
  final pulumi.Input<int>? minReadyInstances;
  /// True whether the auto scaling policy is enabled. The value description is as follows: true: enabled state. false: disabled status. Valid values: `false`, `true`.
  final pulumi.Input<bool>? scalingRuleEnable;
  /// Monitor the configuration of the indicator elasticity strategy. See `scaling_rule_metric` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleMetric>? scalingRuleMetric;
  /// The name of a custom elastic scaling policy. In the application, the policy name cannot be repeated. It must start with a lowercase letter, and can only contain lowercase letters, numbers, and dashes (-), and no more than 32 characters. After the scaling policy is successfully created, the policy name cannot be modified.
  final pulumi.Input<String>? scalingRuleName;
  /// Configuration of Timing Resilient Policies. See `scaling_rule_timer` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleTimer>? scalingRuleTimer;
  /// Flexible strategy type. Valid values: `mix`, `timing` and `metric`.
  final pulumi.Input<String>? scalingRuleType;

  /// Creates a new [ApplicationScalingRuleState].
  /// [appId] Application ID.
  /// [minReadyInstanceRatio] The min ready instance ratio.
  /// [minReadyInstances] The min ready instances.
  /// [scalingRuleEnable] True whether the auto scaling policy is enabled. The value description is as follows: true: enabled state. false: disabled status. Valid values: `false`, `true`.
  /// [scalingRuleMetric] Monitor the configuration of the indicator elasticity strategy. See `scaling_rule_metric` below.
  /// [scalingRuleName] The name of a custom elastic scaling policy. In the application, the policy name cannot be repeated. It must start with a lowercase letter, and can only contain lowercase letters, numbers, and dashes (-), and no more than 32 characters. After the scaling policy is successfully created, the policy name cannot be modified.
  /// [scalingRuleTimer] Configuration of Timing Resilient Policies. See `scaling_rule_timer` below.
  /// [scalingRuleType] Flexible strategy type. Valid values: `mix`, `timing` and `metric`.
  ApplicationScalingRuleState({
    this.appId,
    this.minReadyInstanceRatio,
    this.minReadyInstances,
    this.scalingRuleEnable,
    this.scalingRuleMetric,
    this.scalingRuleName,
    this.scalingRuleTimer,
    this.scalingRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'minReadyInstanceRatio': ?minReadyInstanceRatio,
      'minReadyInstances': ?minReadyInstances,
      'scalingRuleEnable': ?scalingRuleEnable,
      'scalingRuleMetric': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleMetric, Map<String, dynamic>>(scalingRuleMetric, (value) => value.toMap()),
      'scalingRuleName': ?scalingRuleName,
      'scalingRuleTimer': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleTimer, Map<String, dynamic>>(scalingRuleTimer, (value) => value.toMap()),
      'scalingRuleType': ?scalingRuleType,
    };
  }

  factory ApplicationScalingRuleState.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minReadyInstanceRatio: (() { final guardedValue = map['minReadyInstanceRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minReadyInstances: (() { final guardedValue = map['minReadyInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scalingRuleEnable: (() { final guardedValue = map['scalingRuleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scalingRuleMetric: (() { final guardedValue = map['scalingRuleMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationScalingRuleScalingRuleMetric.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingRuleName: (() { final guardedValue = map['scalingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingRuleTimer: (() { final guardedValue = map['scalingRuleTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationScalingRuleScalingRuleTimer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingRuleType: (() { final guardedValue = map['scalingRuleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

