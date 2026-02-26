// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../safety_rule_rule_config/safety_rule_rule_config.dart';

/// The set of arguments for SafetyRule.
class SafetyRuleArgs {
  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  final Input<List<String>>? assertedControls;

  /// ARN of the control panel in which this safety rule will reside.
  final Input<String> controlPanelArn;

  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  final Input<List<String>>? gatingControls;

  /// Name describing the safety rule.
  final Input<String>? name;

  /// Configuration block for safety rule criteria. See below.
  final Input<SafetyRuleRuleConfig> ruleConfig;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Routing controls that can only be set or unset if the specified <span pulumi-lang-nodejs="`ruleConfig`" pulumi-lang-dotnet="`RuleConfig`" pulumi-lang-go="`ruleConfig`" pulumi-lang-python="`rule_config`" pulumi-lang-yaml="`ruleConfig`" pulumi-lang-java="`ruleConfig`">`rule_config`</span> evaluates to true for the specified <span pulumi-lang-nodejs="`gatingControls`" pulumi-lang-dotnet="`GatingControls`" pulumi-lang-go="`gatingControls`" pulumi-lang-python="`gating_controls`" pulumi-lang-yaml="`gatingControls`" pulumi-lang-java="`gatingControls`">`gating_controls`</span>.
  final Input<List<String>>? targetControls;

  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  final Input<int> waitPeriodMs;

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
        Input.mapInputValue<SafetyRuleRuleConfig, Map<String, dynamic>>(
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
          Input.asOptionalInput<List<String>>(map['assertedControls']),
      controlPanelArn: Input.asInput<String>(map['controlPanelArn']),
      gatingControls:
          Input.asOptionalInput<List<String>>(map['gatingControls']),
      name: Input.asOptionalInput<String>(map['name']),
      ruleConfig: Input.asInput<SafetyRuleRuleConfig>(map['ruleConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetControls:
          Input.asOptionalInput<List<String>>(map['targetControls']),
      waitPeriodMs: Input.asInput<int>(map['waitPeriodMs']),
    );
  }
}
