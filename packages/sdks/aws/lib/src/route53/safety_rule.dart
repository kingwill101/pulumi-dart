import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_rule_args.dart';
import 'safety_rule_rule_config.dart';
import 'safety_rule_state.dart';

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
///     ruleConfig: {
///         inverted: false,
///         threshold: 1,
///         type: "ATLEAST",
///     },
///     assertedControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
///     controlPanelArn: "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     name: "daisyguttridge",
///     waitPeriodMs: 5000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.SafetyRule("example",
///     rule_config={
///         "inverted": False,
///         "threshold": 1,
///         "type": "ATLEAST",
///     },
///     asserted_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]],
///     control_panel_arn="arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     name="daisyguttridge",
///     wait_period_ms=5000)
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
///         RuleConfig = new Aws.Route53RecoveryControl.Inputs.SafetyRuleRuleConfigArgs
///         {
///             Inverted = false,
///             Threshold = 1,
///             Type = "ATLEAST",
///         },
///         AssertedControls = new[]
///         {
///             exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
///         },
///         ControlPanelArn = "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///         Name = "daisyguttridge",
///         WaitPeriodMs = 5000,
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
/// 			RuleConfig: &route53recoverycontrol.SafetyRuleRuleConfigArgs{
/// 				Inverted:  pulumi.Bool(false),
/// 				Threshold: pulumi.Int(1),
/// 				Type:      pulumi.String("ATLEAST"),
/// 			},
/// 			AssertedControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 			ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
/// 			Name:            pulumi.String("daisyguttridge"),
/// 			WaitPeriodMs:    pulumi.Int(5000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53recoverycontrol_safetyrule" "example" {
///   rule_config = {
///     inverted  = false
///     threshold = 1
///     type      = "ATLEAST"
///   }
///   asserted_controls = [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn]
///   control_panel_arn = "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"
///   name              = "daisyguttridge"
///   wait_period_ms    = 5000
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .ruleConfig(SafetyRuleRuleConfigArgs.builder()
///                 .inverted(false)
///                 .threshold(1)
///                 .type("ATLEAST")
///                 .build())
///             .assertedControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
///             .controlPanelArn("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
///             .name("daisyguttridge")
///             .waitPeriodMs(5000)
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
///       ruleConfig:
///         inverted: false
///         threshold: 1
///         type: ATLEAST
///       assertedControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
///       controlPanelArn: arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8
///       name: daisyguttridge
///       waitPeriodMs: 5000
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.SafetyRule("example", {
///     ruleConfig: {
///         inverted: false,
///         threshold: 1,
///         type: "ATLEAST",
///     },
///     name: "i_o",
///     controlPanelArn: "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     waitPeriodMs: 5000,
///     gatingControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
///     targetControls: [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.SafetyRule("example",
///     rule_config={
///         "inverted": False,
///         "threshold": 1,
///         "type": "ATLEAST",
///     },
///     name="i_o",
///     control_panel_arn="arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
///     wait_period_ms=5000,
///     gating_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]],
///     target_controls=[example_aws_route53recoverycontrolconfig_routing_control["arn"]])
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
///         RuleConfig = new Aws.Route53RecoveryControl.Inputs.SafetyRuleRuleConfigArgs
///         {
///             Inverted = false,
///             Threshold = 1,
///             Type = "ATLEAST",
///         },
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
/// 			RuleConfig: &route53recoverycontrol.SafetyRuleRuleConfigArgs{
/// 				Inverted:  pulumi.Bool(false),
/// 				Threshold: pulumi.Int(1),
/// 				Type:      pulumi.String("ATLEAST"),
/// 			},
/// 			Name:            pulumi.String("i_o"),
/// 			ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
/// 			WaitPeriodMs:    pulumi.Int(5000),
/// 			GatingControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 			TargetControls: pulumi.StringArray{
/// 				exampleAwsRoute53recoverycontrolconfigRoutingControl.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53recoverycontrol_safetyrule" "example" {
///   rule_config = {
///     inverted  = false
///     threshold = 1
///     type      = "ATLEAST"
///   }
///   name              = "i_o"
///   control_panel_arn = "arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8"
///   wait_period_ms    = 5000
///   gating_controls   = [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn]
///   target_controls   = [exampleAwsRoute53recoverycontrolconfigRoutingControl.arn]
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .ruleConfig(SafetyRuleRuleConfigArgs.builder()
///                 .inverted(false)
///                 .threshold(1)
///                 .type("ATLEAST")
///                 .build())
///             .name("i_o")
///             .controlPanelArn("arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
///             .waitPeriodMs(5000)
///             .gatingControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
///             .targetControls(exampleAwsRoute53recoverycontrolconfigRoutingControl.arn())
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
///       ruleConfig:
///         inverted: false
///         threshold: 1
///         type: ATLEAST
///       name: i_o
///       controlPanelArn: arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8
///       waitPeriodMs: 5000
///       gatingControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
///       targetControls:
///         - ${exampleAwsRoute53recoverycontrolconfigRoutingControl.arn}
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Routing controls that can only be set or unset if the specified `ruleConfig` evaluates to true for the specified `gatingControls`.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    assertedControls = registerOutput<List<String>?>('assertedControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    controlPanelArn = registerOutput<String>('controlPanelArn');
    gatingControls = registerOutput<List<String>?>('gatingControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ruleConfig = registerOutput<SafetyRuleRuleConfig>('ruleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyRuleRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetControls = registerOutput<List<String>?>('targetControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    waitPeriodMs = registerOutput<int>('waitPeriodMs');
  }

  /// Gets an existing [SafetyRule] resource's state with the given [name] and [id].
  static SafetyRule get(
    String name,
    pulumi.Input<String> id, {
    SafetyRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SafetyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SafetyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/safetyRule:SafetyRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    assertedControls = registerOutput<List<String>?>('assertedControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    controlPanelArn = registerOutput<String>('controlPanelArn');
    gatingControls = registerOutput<List<String>?>('gatingControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ruleConfig = registerOutput<SafetyRuleRuleConfig>('ruleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyRuleRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetControls = registerOutput<List<String>?>('targetControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    waitPeriodMs = registerOutput<int>('waitPeriodMs');
  }

  /// Creates a typed reference to an existing [SafetyRule] resource.
  SafetyRule.reference(String urn)
    : super(
        'aws:route53recoverycontrol/safetyRule:SafetyRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    assertedControls = registerOutput<List<String>?>('assertedControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    controlPanelArn = registerOutput<String>('controlPanelArn');
    gatingControls = registerOutput<List<String>?>('gatingControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ruleConfig = registerOutput<SafetyRuleRuleConfig>('ruleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyRuleRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetControls = registerOutput<List<String>?>('targetControls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    waitPeriodMs = registerOutput<int>('waitPeriodMs');
  }
}
