// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_rule_rule_config.dart';

/// {@template pulumi_route53_recovery_control_safety_rule_safety_rule_args_doc}
/// The set of arguments for SafetyRule.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_control_safety_rule_safety_rule_args_doc}
class SafetyRuleArgs {
  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  final pulumi.Input<List<String>>? assertedControls;
  /// ARN of the control panel in which this safety rule will reside.
  final pulumi.Input<String> controlPanelArn;
  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  final pulumi.Input<List<String>>? gatingControls;
  /// Name describing the safety rule.
  final pulumi.Input<String>? name;
  /// Configuration block for safety rule criteria. See below.
  final pulumi.Input<SafetyRuleRuleConfig> ruleConfig;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  final pulumi.Input<List<String>>? targetControls;
  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> waitPeriodMs;

  /// Creates a new [SafetyRuleArgs].
  /// [assertedControls] Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  /// [controlPanelArn] ARN of the control panel in which this safety rule will reside.
  /// [gatingControls] Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  /// [name] Name describing the safety rule.
  /// [ruleConfig] Configuration block for safety rule criteria. See below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetControls] Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  /// [waitPeriodMs] Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  SafetyRuleArgs({
    this.assertedControls,
    required this.controlPanelArn,
    this.gatingControls,
    this.name,
    required this.ruleConfig,
    this.tags,
    this.targetControls,
    required this.waitPeriodMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertedControls': ?assertedControls,
      'controlPanelArn': controlPanelArn,
      'gatingControls': ?gatingControls,
      'name': ?name,
      'ruleConfig': pulumi.Input.mapInputValue<SafetyRuleRuleConfig, Map<String, dynamic>>(ruleConfig, (value) => value.toMap()),
      'tags': ?tags,
      'targetControls': ?targetControls,
      'waitPeriodMs': waitPeriodMs,
    };
  }

  factory SafetyRuleArgs.fromMap(Map<String, dynamic> map) {
    return SafetyRuleArgs(
      assertedControls: (() { final guardedValue = map['assertedControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      controlPanelArn: pulumi.Input.fromValue(map['controlPanelArn'] as String),
      gatingControls: (() { final guardedValue = map['gatingControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleConfig: pulumi.Input.fromValue(SafetyRuleRuleConfig.fromMap((map['ruleConfig']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetControls: (() { final guardedValue = map['targetControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitPeriodMs: pulumi.Input.fromValue(map['waitPeriodMs'] as int),
    );
  }
}

