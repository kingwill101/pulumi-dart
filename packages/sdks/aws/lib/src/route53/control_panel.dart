import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_panel_args.dart';
import 'control_panel_state.dart';

/// Provides an AWS Route 53 Recovery Control Config Control Panel.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.ControlPanel("example", {
///     name: "balmorhea",
///     clusterArn: "arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.ControlPanel("example",
///     name="balmorhea",
///     cluster_arn="arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryControl.ControlPanel("example", new()
///     {
///         Name = "balmorhea",
///         ClusterArn = "arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
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
/// 		_, err := route53recoverycontrol.NewControlPanel(ctx, "example", &route53recoverycontrol.ControlPanelArgs{
/// 			Name:       pulumi.String("balmorhea"),
/// 			ClusterArn: pulumi.String("arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
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
/// resource "aws_route53recoverycontrol_controlpanel" "example" {
///   name        = "balmorhea"
///   cluster_arn = "arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53recoverycontrol.ControlPanel;
/// import com.pulumi.aws.route53recoverycontrol.ControlPanelArgs;
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
///         var example = new ControlPanel("example", ControlPanelArgs.builder()
///             .name("balmorhea")
///             .clusterArn("arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoverycontrol:ControlPanel
///     properties:
///       name: balmorhea
///       clusterArn: arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Control Panel using the control panel arn. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/controlPanel:ControlPanel mypanel arn:aws:route53-recovery-control::313517334327:controlpanel/1bfba17df8684f5dab0467b71424f7e8
/// ```
class ControlPanel extends pulumi.CustomResource {
  /// ARN of the control panel.
  late final pulumi.Output<String> arn;
  /// ARN of the cluster in which this control panel will reside.
  late final pulumi.Output<String> clusterArn;
  /// Whether a control panel is default.
  late final pulumi.Output<bool> defaultControlPanel;
  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Number routing controls in a control panel.
  late final pulumi.Output<int> routingControlCount;
  /// Status of control panel: `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ControlPanel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPanel]. {@macro pulumi_route53_recovery_control_control_panel_control_panel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPanel(
    String name, {
    ControlPanelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/controlPanel:ControlPanel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    defaultControlPanel = registerOutput<bool>('defaultControlPanel');
    this.name = registerOutput<String>('name');
    routingControlCount = registerOutput<int>('routingControlCount');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ControlPanel] resource's state with the given [name] and [id].
  static ControlPanel get(
    String name,
    pulumi.Input<String> id, {
    ControlPanelState? state,
  }) {
    return ControlPanel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ControlPanel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/controlPanel:ControlPanel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    defaultControlPanel = registerOutput<bool>('defaultControlPanel');
    this.name = registerOutput<String>('name');
    routingControlCount = registerOutput<int>('routingControlCount');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
