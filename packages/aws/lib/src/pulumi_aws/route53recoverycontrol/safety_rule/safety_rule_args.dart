// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../safety_rule_rule_config/safety_rule_rule_config.dart';

/// The set of arguments for SafetyRule.
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
    final map = <String, dynamic>{};
    final assertedControlsValue = assertedControls;
    if (assertedControlsValue != null) {
      map['assertedControls'] = assertedControlsValue;
    }
    map['controlPanelArn'] = controlPanelArn;
    final gatingControlsValue = gatingControls;
    if (gatingControlsValue != null) {
      map['gatingControls'] = gatingControlsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ruleConfig'] =
        pulumi.Input.mapInputValue<SafetyRuleRuleConfig, Map<String, dynamic>>(
            ruleConfig, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetControlsValue = targetControls;
    if (targetControlsValue != null) {
      map['targetControls'] = targetControlsValue;
    }
    map['waitPeriodMs'] = waitPeriodMs;
    return map;
  }

  factory SafetyRuleArgs.fromMap(Map<String, dynamic> map) {
    return SafetyRuleArgs(
      assertedControls:
          pulumi.Input.asOptionalInput<List<String>>(map['assertedControls']),
      controlPanelArn: pulumi.Input.asInput<String>(map['controlPanelArn']),
      gatingControls:
          pulumi.Input.asOptionalInput<List<String>>(map['gatingControls']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      ruleConfig: pulumi.Input.asInput<SafetyRuleRuleConfig>(map['ruleConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetControls:
          pulumi.Input.asOptionalInput<List<String>>(map['targetControls']),
      waitPeriodMs: pulumi.Input.asInput<int>(map['waitPeriodMs']),
    );
  }
}
