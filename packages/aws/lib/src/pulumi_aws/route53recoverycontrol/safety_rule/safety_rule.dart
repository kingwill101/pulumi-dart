import 'package:pulumi/pulumi.dart';
import '../safety_rule_rule_config/safety_rule_rule_config.dart';
import 'safety_rule_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Safety Rule
///
/// ## Example Usage
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Safety Rule using the safety rule ARN. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/safetyRule:SafetyRule myrule arn:aws:route53-recovery-control::313517334327:controlpanel/1bfba17df8684f5dab0467b71424f7e8/safetyrule/3bacc77003364c0f
/// ```
class SafetyRule extends CustomResource {
  /// ARN of the safety rule.
  late final Output<String> arn;

  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  late final Output<List<String>?> assertedControls;

  /// ARN of the control panel in which this safety rule will reside.
  late final Output<String> controlPanelArn;

  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  late final Output<List<String>?> gatingControls;

  /// Name describing the safety rule.
  late final Output<String> name;

  /// Configuration block for safety rule criteria. See below.
  late final Output<SafetyRuleRuleConfig> ruleConfig;

  /// Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  late final Output<List<String>?> targetControls;

  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  late final Output<int> waitPeriodMs;

  SafetyRule(
    String name, {
    SafetyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/safetyRule:SafetyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assertedControls = registerOutput<List<String>?>('assertedControls');
    this.controlPanelArn = registerOutput<String>('controlPanelArn');
    this.gatingControls = registerOutput<List<String>?>('gatingControls');
    this.name = registerOutput<String>('name');
    this.ruleConfig = registerOutput<SafetyRuleRuleConfig>('ruleConfig');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetControls = registerOutput<List<String>?>('targetControls');
    this.waitPeriodMs = registerOutput<int>('waitPeriodMs');
  }
}
