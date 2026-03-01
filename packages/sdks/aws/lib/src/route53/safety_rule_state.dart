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
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? assertedControls,
    pulumi.Output<String>? controlPanelArn,
    pulumi.Output<List<String>>? gatingControls,
    pulumi.Output<String>? name,
    pulumi.Output<SafetyRuleRuleConfig>? ruleConfig,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? targetControls,
    pulumi.Output<int>? waitPeriodMs,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assertedControls = pulumi.Input.asOptionalInput<List<String>>(assertedControls),
      controlPanelArn = pulumi.Input.asOptionalInput<String>(controlPanelArn),
      gatingControls = pulumi.Input.asOptionalInput<List<String>>(gatingControls),
      name = pulumi.Input.asOptionalInput<String>(name),
      ruleConfig = pulumi.Input.asOptionalInput<SafetyRuleRuleConfig>(ruleConfig),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetControls = pulumi.Input.asOptionalInput<List<String>>(targetControls),
      waitPeriodMs = pulumi.Input.asOptionalInput<int>(waitPeriodMs);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assertedControls: map['assertedControls'] == null ? null : pulumi.Output.create<List<String>>((map['assertedControls'] as List).cast<String>()),
      controlPanelArn: map['controlPanelArn'] == null ? null : pulumi.Output.create<String>(map['controlPanelArn'] as String),
      gatingControls: map['gatingControls'] == null ? null : pulumi.Output.create<List<String>>((map['gatingControls'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ruleConfig: map['ruleConfig'] == null ? null : pulumi.Output.create<SafetyRuleRuleConfig>(SafetyRuleRuleConfig.fromMap((map['ruleConfig'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetControls: map['targetControls'] == null ? null : pulumi.Output.create<List<String>>((map['targetControls'] as List).cast<String>()),
      waitPeriodMs: map['waitPeriodMs'] == null ? null : pulumi.Output.create<int>(map['waitPeriodMs'] as int),
    );
  }
}

