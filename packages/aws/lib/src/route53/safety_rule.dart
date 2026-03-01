import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_rule_args.dart';
import 'safety_rule_rule_config.dart';

/// Provides an AWS Route 53 Recovery Control Config Safety Rule
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.SafetyRule("example", {
///     assertedControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
///     controlPanelArn: "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     name: "daisyguttridge",
///     waitPeriodMs: 5000,
///     ruleConfig: {
///         inverted: false,
///         threshold: 1,
///         type: "ATLEAST",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.SafetyRule("example",
///     asserted_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]],
///     control_panel_arn="arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     name="daisyguttridge",
///     wait_period_ms=5000,
///     rule_config={
///         "inverted": False,
///         "threshold": 1,
///         "type": "ATLEAST",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryControl.SafetyRule("example", new()
///     {
///         AssertedControls = new[]
///         {
///             exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
///         },
///         ControlPanelArn = "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///         Name = "daisyguttridge",
///         WaitPeriodMs = 5000,
///         RuleConfig = new Aws.Route53RecoveryControl.Inputs.SafetyRuleRuleConfigArgs
///         {
///             Inverted = false,
///             Threshold = 1,
///             Type = "ATLEAST",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoverycontrol"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53recoverycontrol.NewSafetyRule(ctx, "example", &route53recoverycontrol.SafetyRuleArgs{
/// 			AssertedControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 			ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
/// 			Name:            pulumi.String("daisyguttridge"),
/// 			WaitPeriodMs:    pulumi.Int(5000),
/// 			RuleConfig: &route53recoverycontrol.SafetyRuleRuleConfigArgs{
/// 				Inverted:  pulumi.Bool(false),
/// 				Threshold: pulumi.Int(1),
/// 				Type:      pulumi.String("ATLEAST"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53recoverycontrol.SafetyRule;
/// import com.pulumi.aws.route53recoverycontrol.SafetyRuleArgs;
/// import com.pulumi.aws.route53recoverycontrol.inputs.SafetyRuleRuleConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SafetyRule("example", SafetyRuleArgs.builder()
///             .assertedControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
///             .controlPanelArn("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
///             .name("daisyguttridge")
///             .waitPeriodMs(5000)
///             .ruleConfig(SafetyRuleRuleConfigArgs.builder()
///                 .inverted(false)
///                 .threshold(1)
///                 .type("ATLEAST")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoverycontrol:SafetyRule
///     properties:
///       assertedControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
///       controlPanelArn: arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8
///       name: daisyguttridge
///       waitPeriodMs: 5000
///       ruleConfig:
///         inverted: false
///         threshold: 1
///         type: ATLEAST
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.SafetyRule("example", {
///     name: "i_o",
///     controlPanelArn: "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     waitPeriodMs: 5000,
///     gatingControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
///     targetControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
///     ruleConfig: {
///         inverted: false,
///         threshold: 1,
///         type: "ATLEAST",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.SafetyRule("example",
///     name="i_o",
///     control_panel_arn="arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     wait_period_ms=5000,
///     gating_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]],
///     target_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]],
///     rule_config={
///         "inverted": False,
///         "threshold": 1,
///         "type": "ATLEAST",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryControl.SafetyRule("example", new()
///     {
///         Name = "i_o",
///         ControlPanelArn = "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///         WaitPeriodMs = 5000,
///         GatingControls = new[]
///         {
///             exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
///         },
///         TargetControls = new[]
///         {
///             exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
///         },
///         RuleConfig = new Aws.Route53RecoveryControl.Inputs.SafetyRuleRuleConfigArgs
///         {
///             Inverted = false,
///             Threshold = 1,
///             Type = "ATLEAST",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoverycontrol"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53recoverycontrol.NewSafetyRule(ctx, "example", &route53recoverycontrol.SafetyRuleArgs{
/// 			Name:            pulumi.String("i_o"),
/// 			ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
/// 			WaitPeriodMs:    pulumi.Int(5000),
/// 			GatingControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 			TargetControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 			RuleConfig: &route53recoverycontrol.SafetyRuleRuleConfigArgs{
/// 				Inverted:  pulumi.Bool(false),
/// 				Threshold: pulumi.Int(1),
/// 				Type:      pulumi.String("ATLEAST"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53recoverycontrol.SafetyRule;
/// import com.pulumi.aws.route53recoverycontrol.SafetyRuleArgs;
/// import com.pulumi.aws.route53recoverycontrol.inputs.SafetyRuleRuleConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SafetyRule("example", SafetyRuleArgs.builder()
///             .name("i_o")
///             .controlPanelArn("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
///             .waitPeriodMs(5000)
///             .gatingControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
///             .targetControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
///             .ruleConfig(SafetyRuleRuleConfigArgs.builder()
///                 .inverted(false)
///                 .threshold(1)
///                 .type("ATLEAST")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoverycontrol:SafetyRule
///     properties:
///       name: i_o
///       controlPanelArn: arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8
///       waitPeriodMs: 5000
///       gatingControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
///       targetControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
///       ruleConfig:
///         inverted: false
///         threshold: 1
///         type: ATLEAST
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Safety Rule using the safety rule ARN. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/safetyRule:SafetyRule myrule arn:aws:route53-recovery-control::313517334327:controlpanel/1bfba17df8684f5dab0467b71424f7e8/safetyrule/3bacc77003364c0f
/// ```
class SafetyRule extends pulumi.CustomResource {
  /// ARN of the safety rule.
  late final pulumi.Output<String> arn;

  /// Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed.
  late final pulumi.Output<List<String>?> assertedControls;

  /// ARN of the control panel in which this safety rule will reside.
  late final pulumi.Output<String> controlPanelArn;

  /// Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
  late final pulumi.Output<List<String>?> gatingControls;

  /// Name describing the safety rule.
  late final pulumi.Output<String> name;

  /// Configuration block for safety rule criteria. See below.
  late final pulumi.Output<SafetyRuleRuleConfig> ruleConfig;

  /// Status of the safety rule. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Routing controls that can only be set or unset if the specified `rule_config` evaluates to true for the specified `gating_controls`.
  late final pulumi.Output<List<String>?> targetControls;

  /// Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> waitPeriodMs;

  /// Creates a new [SafetyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SafetyRule]. {@macro pulumi_route53_recovery_control_safety_rule_safety_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SafetyRule(
    String name, {
    SafetyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:route53recoverycontrol/safetyRule:SafetyRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
