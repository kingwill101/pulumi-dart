// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_rule_rule_config.dart';

/// Input properties used for looking up and filtering SafetyRule resources.
class SafetyRuleState {
  /// ARN of the safety rule.
  final pulumi.Input<String>? arn;
  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  final pulumi.Input<List<String>>? assertedControls;
  /// ARN of the control panel in which this safety rule will reside.
  final pulumi.Input<String>? controlPanelArn;
  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  final pulumi.Input<List<String>>? gatingControls;
  /// Name describing the safety rule.
  final pulumi.Input<String>? name;
  /// Configuration block for safety rule criteria. See below.
  final pulumi.Input<SafetyRuleRuleConfig>? ruleConfig;
  /// Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  final pulumi.Input<List<String>>? targetControls;
  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? waitPeriodMs;

  /// Creates a new [SafetyRuleState].
  /// [arn] ARN of the safety rule.
  /// [assertedControls] Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  /// [controlPanelArn] ARN of the control panel in which this safety rule will reside.
  /// [gatingControls] Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  /// [name] Name describing the safety rule.
  /// [ruleConfig] Configuration block for safety rule criteria. See below.
  /// [status] Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetControls] Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  /// [waitPeriodMs] Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  SafetyRuleState({
    this.arn,
    this.assertedControls,
    this.controlPanelArn,
    this.gatingControls,
    this.name,
    this.ruleConfig,
    this.status,
    this.tags,
    this.tagsAll,
    this.targetControls,
    this.waitPeriodMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assertedControls': ?assertedControls,
      'controlPanelArn': ?controlPanelArn,
      'gatingControls': ?gatingControls,
      'name': ?name,
      'ruleConfig': ?pulumi.Input.mapOptionalInputValue<SafetyRuleRuleConfig, Map<String, dynamic>>(ruleConfig, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetControls': ?targetControls,
      'waitPeriodMs': ?waitPeriodMs,
    };
  }

  factory SafetyRuleState.fromMap(Map<String, dynamic> map) {
    return SafetyRuleState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      assertedControls: map['assertedControls'] == null ? null : (((map['assertedControls'] as List).cast<String>()).input()).input(),
      controlPanelArn: map['controlPanelArn'] == null ? null : ((map['controlPanelArn'] as String).input()).input(),
      gatingControls: map['gatingControls'] == null ? null : (((map['gatingControls'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ruleConfig: map['ruleConfig'] == null ? null : ((SafetyRuleRuleConfig.fromMap((map['ruleConfig']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetControls: map['targetControls'] == null ? null : (((map['targetControls'] as List).cast<String>()).input()).input(),
      waitPeriodMs: map['waitPeriodMs'] == null ? null : ((map['waitPeriodMs'] as int).input()).input(),
    );
  }
}

