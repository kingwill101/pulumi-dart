// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_rule_rule_config.dart';

/// Input properties used for looking up and filtering SafetyRule resources.
class SafetyRuleState {
  /// ARN of the safety rule.
  final pulumi.Input<String?>? arn;
  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  final pulumi.Input<List<String>?>? assertedControls;
  /// ARN of the control panel in which this safety rule will reside.
  final pulumi.Input<String?>? controlPanelArn;
  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  final pulumi.Input<List<String>?>? gatingControls;
  /// Name describing the safety rule.
  final pulumi.Input<String?>? name;
  /// Configuration block for safety rule criteria. See below.
  final pulumi.Input<SafetyRuleRuleConfig?>? ruleConfig;
  /// Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  final pulumi.Input<String?>? status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Routing controls that can only be set or unset if the specified `ruleConfig` evaluates to true for the specified `gatingControls`.
  final pulumi.Input<List<String>?>? targetControls;
  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? waitPeriodMs;

  /// Creates a new [SafetyRuleState].
  /// [arn] ARN of the safety rule.
  /// [assertedControls] Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  /// [controlPanelArn] ARN of the control panel in which this safety rule will reside.
  /// [gatingControls] Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  /// [name] Name describing the safety rule.
  /// [ruleConfig] Configuration block for safety rule criteria. See below.
  /// [status] Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetControls] Routing controls that can only be set or unset if the specified `ruleConfig` evaluates to true for the specified `gatingControls`.
  /// [waitPeriodMs] Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  const SafetyRuleState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assertedControls: (() { final guardedValue = map['assertedControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      controlPanelArn: (() { final guardedValue = map['controlPanelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatingControls: (() { final guardedValue = map['gatingControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleConfig: (() { final guardedValue = map['ruleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SafetyRuleRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetControls: (() { final guardedValue = map['targetControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitPeriodMs: (() { final guardedValue = map['waitPeriodMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
