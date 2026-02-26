import 'package:pulumi/pulumi.dart';
import 'routing_control_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Routing Control.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.RoutingControl("example", {
/// name: "tinlicker",
/// clusterArn: "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.RoutingControl("example",
/// name="tinlicker",
/// cluster_arn="arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53RecoveryControl.RoutingControl("example", new()
/// {
/// Name = "tinlicker",
/// ClusterArn = "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
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
/// _, err := route53recoverycontrol.NewRoutingControl(ctx, "example", &route53recoverycontrol.RoutingControlArgs{
/// Name:       pulumi.String("tinlicker"),
/// ClusterArn: pulumi.String("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
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
/// import com.pulumi.aws.route53recoverycontrol.RoutingControl;
/// import com.pulumi.aws.route53recoverycontrol.RoutingControlArgs;
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
/// var example = new RoutingControl("example", RoutingControlArgs.builder()
/// .name("tinlicker")
/// .clusterArn("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53recoverycontrol:RoutingControl
/// properties:
/// name: tinlicker
/// clusterArn: arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.RoutingControl("example", {
/// name: "thomasoliver",
/// clusterArn: "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// controlPanelArn: "arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.RoutingControl("example",
/// name="thomasoliver",
/// cluster_arn="arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// control_panel_arn="arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53RecoveryControl.RoutingControl("example", new()
/// {
/// Name = "thomasoliver",
/// ClusterArn = "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// ControlPanelArn = "arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
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
/// _, err := route53recoverycontrol.NewRoutingControl(ctx, "example", &route53recoverycontrol.RoutingControlArgs{
/// Name:            pulumi.String("thomasoliver"),
/// ClusterArn:      pulumi.String("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
/// ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
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
/// import com.pulumi.aws.route53recoverycontrol.RoutingControl;
/// import com.pulumi.aws.route53recoverycontrol.RoutingControlArgs;
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
/// var example = new RoutingControl("example", RoutingControlArgs.builder()
/// .name("thomasoliver")
/// .clusterArn("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// .controlPanelArn("arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53recoverycontrol:RoutingControl
/// properties:
/// name: thomasoliver
/// clusterArn: arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393
/// controlPanelArn: arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Routing Control using the routing control arn. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/routingControl:RoutingControl mycontrol arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8/routingcontrol/d5d90e587870494b
/// ```
class RoutingControl extends CustomResource {
  /// ARN of the routing control.
  late final Output<String> arn;

  /// ARN of the cluster in which this routing control will reside.
  late final Output<String> clusterArn;

  /// ARN of the control panel in which this routing control will reside.
  late final Output<String> controlPanelArn;

  /// The name describing the routing control.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Status of routing control. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final Output<String> status;

  RoutingControl(
    String name, {
    RoutingControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/routingControl:RoutingControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.clusterArn = Output.createUnknown<String>();
    this.controlPanelArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
