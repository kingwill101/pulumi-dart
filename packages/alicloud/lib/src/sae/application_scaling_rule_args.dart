// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_metric.dart';
import 'application_scaling_rule_scaling_rule_timer.dart';

/// {@template pulumi_sae_application_scaling_rule_application_scaling_rule_args_doc}
/// The set of arguments for ApplicationScalingRule.
/// {@endtemplate}
/// {@macro pulumi_sae_application_scaling_rule_application_scaling_rule_args_doc}
class ApplicationScalingRuleArgs {
  /// Application ID.
  final pulumi.Input<String> appId;
  /// The min ready instance ratio.
  final pulumi.Input<int>? minReadyInstanceRatio;
  /// The min ready instances.
  final pulumi.Input<int>? minReadyInstances;
  /// True whether the auto scaling policy is enabled. The value description is as follows: true: enabled state. false: disabled status. Valid values: `false`, `true`.
  final pulumi.Input<bool>? scalingRuleEnable;
  /// Monitor the configuration of the indicator elasticity strategy. See `scaling_rule_metric` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleMetric>? scalingRuleMetric;
  /// The name of a custom elastic scaling policy. In the application, the policy name cannot be repeated. It must start with a lowercase letter, and can only contain lowercase letters, numbers, and dashes (-), and no more than 32 characters. After the scaling policy is successfully created, the policy name cannot be modified.
  final pulumi.Input<String> scalingRuleName;
  /// Configuration of Timing Resilient Policies. See `scaling_rule_timer` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleTimer>? scalingRuleTimer;
  /// Flexible strategy type. Valid values: `mix`, `timing` and `metric`.
  final pulumi.Input<String> scalingRuleType;

  /// Creates a new [ApplicationScalingRuleArgs].
  /// [appId] Application ID.
  /// [minReadyInstanceRatio] The min ready instance ratio.
  /// [minReadyInstances] The min ready instances.
  /// [scalingRuleEnable] True whether the auto scaling policy is enabled. The value description is as follows: true: enabled state. false: disabled status. Valid values: `false`, `true`.
  /// [scalingRuleMetric] Monitor the configuration of the indicator elasticity strategy. See `scaling_rule_metric` below.
  /// [scalingRuleName] The name of a custom elastic scaling policy. In the application, the policy name cannot be repeated. It must start with a lowercase letter, and can only contain lowercase letters, numbers, and dashes (-), and no more than 32 characters. After the scaling policy is successfully created, the policy name cannot be modified.
  /// [scalingRuleTimer] Configuration of Timing Resilient Policies. See `scaling_rule_timer` below.
  /// [scalingRuleType] Flexible strategy type. Valid values: `mix`, `timing` and `metric`.
  ApplicationScalingRuleArgs({
    required String appId,
    int? minReadyInstanceRatio,
    int? minReadyInstances,
    bool? scalingRuleEnable,
    ApplicationScalingRuleScalingRuleMetric? scalingRuleMetric,
    required String scalingRuleName,
    ApplicationScalingRuleScalingRuleTimer? scalingRuleTimer,
    required String scalingRuleType,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      minReadyInstanceRatio = pulumi.Input.asOptionalInput<int>(minReadyInstanceRatio),
      minReadyInstances = pulumi.Input.asOptionalInput<int>(minReadyInstances),
      scalingRuleEnable = pulumi.Input.asOptionalInput<bool>(scalingRuleEnable),
      scalingRuleMetric = pulumi.Input.asOptionalInput<ApplicationScalingRuleScalingRuleMetric>(scalingRuleMetric),
      scalingRuleName = pulumi.Input.asInput<String>(scalingRuleName),
      scalingRuleTimer = pulumi.Input.asOptionalInput<ApplicationScalingRuleScalingRuleTimer>(scalingRuleTimer),
      scalingRuleType = pulumi.Input.asInput<String>(scalingRuleType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'minReadyInstanceRatio': ?minReadyInstanceRatio,
      'minReadyInstances': ?minReadyInstances,
      'scalingRuleEnable': ?scalingRuleEnable,
      'scalingRuleMetric': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleMetric, Map<String, dynamic>>(scalingRuleMetric, (value) => value.toMap()),
      'scalingRuleName': scalingRuleName,
      'scalingRuleTimer': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleTimer, Map<String, dynamic>>(scalingRuleTimer, (value) => value.toMap()),
      'scalingRuleType': scalingRuleType,
    };
  }

  factory ApplicationScalingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleArgs(
      appId: map['appId'] as String,
      minReadyInstanceRatio: map['minReadyInstanceRatio'] == null ? null : map['minReadyInstanceRatio'] as int,
      minReadyInstances: map['minReadyInstances'] == null ? null : map['minReadyInstances'] as int,
      scalingRuleEnable: map['scalingRuleEnable'] == null ? null : map['scalingRuleEnable'] as bool,
      scalingRuleMetric: map['scalingRuleMetric'] == null ? null : ApplicationScalingRuleScalingRuleMetric.fromMap((map['scalingRuleMetric'] as Map).cast<String, dynamic>()),
      scalingRuleName: map['scalingRuleName'] as String,
      scalingRuleTimer: map['scalingRuleTimer'] == null ? null : ApplicationScalingRuleScalingRuleTimer.fromMap((map['scalingRuleTimer'] as Map).cast<String, dynamic>()),
      scalingRuleType: map['scalingRuleType'] as String,
    );
  }
}

