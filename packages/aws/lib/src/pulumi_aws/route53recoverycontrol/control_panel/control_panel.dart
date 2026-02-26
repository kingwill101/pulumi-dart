import 'package:pulumi/pulumi.dart';
import 'control_panel_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Control Panel.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.ControlPanel("example", {
/// name: "balmorhea",
/// clusterArn: "arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.ControlPanel("example",
/// name="balmorhea",
/// cluster_arn="arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53RecoveryControl.ControlPanel("example", new()
/// {
/// Name = "balmorhea",
/// ClusterArn = "arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoverycontrol"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53recoverycontrol.NewControlPanel(ctx, "example", &route53recoverycontrol.ControlPanelArgs{
/// Name:       pulumi.String("balmorhea"),
/// ClusterArn: pulumi.String("arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ControlPanel("example", ControlPanelArgs.builder()
/// .name("balmorhea")
/// .clusterArn("arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53recoverycontrol:ControlPanel
/// properties:
/// name: balmorhea
/// clusterArn: arn:aws:route53-recovery-control::123456789012:cluster/8d47920e-d789-437d-803a-2dcc4b204393
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Control Panel using the control panel arn. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/controlPanel:ControlPanel mypanel arn:aws:route53-recovery-control::313517334327:controlpanel/1bfba17df8684f5dab0467b71424f7e8
/// ```
class ControlPanel extends CustomResource {
  /// ARN of the control panel.
  late final Output<String> arn;

  /// ARN of the cluster in which this control panel will reside.
  late final Output<String> clusterArn;

  /// Whether a control panel is default.
  late final Output<bool> defaultControlPanel;

  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Number routing controls in a control panel.
  late final Output<int> routingControlCount;

  /// Status of control panel: `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ControlPanel(
    String name, {
    ControlPanelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/controlPanel:ControlPanel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterArn = registerOutput<String>('clusterArn');
    this.defaultControlPanel = registerOutput<bool>('defaultControlPanel');
    this.name = registerOutput<String>('name');
    this.routingControlCount = registerOutput<int>('routingControlCount');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
