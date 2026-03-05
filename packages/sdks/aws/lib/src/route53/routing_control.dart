import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_control_args.dart';
import 'routing_control_state.dart';

/// Provides an AWS Route 53 Recovery Control Config Routing Control.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.RoutingControl("example", {
///     name: "tinlicker",
///     clusterArn: "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.RoutingControl("example",
///     name="tinlicker",
///     cluster_arn="arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryControl.RoutingControl("example", new()
///     {
///         Name = "tinlicker",
///         ClusterArn = "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
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
/// 		_, err := route53recoverycontrol.NewRoutingControl(ctx, "example", &route53recoverycontrol.RoutingControlArgs{
/// 			Name:       pulumi.String("tinlicker"),
/// 			ClusterArn: pulumi.String("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RoutingControl("example", RoutingControlArgs.builder()
///             .name("tinlicker")
///             .clusterArn("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoverycontrol:RoutingControl
///     properties:
///       name: tinlicker
///       clusterArn: arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoverycontrol.RoutingControl("example", {
///     name: "thomasoliver",
///     clusterArn: "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
///     controlPanelArn: "arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoverycontrol.RoutingControl("example",
///     name="thomasoliver",
///     cluster_arn="arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
///     control_panel_arn="arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryControl.RoutingControl("example", new()
///     {
///         Name = "thomasoliver",
///         ClusterArn = "arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393",
///         ControlPanelArn = "arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8",
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
/// 		_, err := route53recoverycontrol.NewRoutingControl(ctx, "example", &route53recoverycontrol.RoutingControlArgs{
/// 			Name:            pulumi.String("thomasoliver"),
/// 			ClusterArn:      pulumi.String("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393"),
/// 			ControlPanelArn: pulumi.String("arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RoutingControl("example", RoutingControlArgs.builder()
///             .name("thomasoliver")
///             .clusterArn("arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393")
///             .controlPanelArn("arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoverycontrol:RoutingControl
///     properties:
///       name: thomasoliver
///       clusterArn: arn:aws:route53-recovery-control::881188118811:cluster/8d47920e-d789-437d-803a-2dcc4b204393
///       controlPanelArn: arn:aws:route53-recovery-control::428113431245:controlpanel/abd5fbfc052d4844a082dbf400f61da8
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Routing Control using the routing control arn. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/routingControl:RoutingControl mycontrol arn:aws:route53-recovery-control::313517334327:controlpanel/abd5fbfc052d4844a082dbf400f61da8/routingcontrol/d5d90e587870494b
/// ```
class RoutingControl extends pulumi.CustomResource {
  /// ARN of the routing control.
  late final pulumi.Output<String> arn;
  /// ARN of the cluster in which this routing control will reside.
  late final pulumi.Output<String> clusterArn;
  /// ARN of the control panel in which this routing control will reside.
  late final pulumi.Output<String> controlPanelArn;
  /// The name describing the routing control.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Status of routing control. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final pulumi.Output<String> status;

  /// Creates a new [RoutingControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingControl]. {@macro pulumi_route53_recovery_control_routing_control_routing_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingControl(
    String name, {
    RoutingControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/routingControl:RoutingControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    controlPanelArn = registerOutput<String>('controlPanelArn');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RoutingControl] resource's state with the given [name] and [id].
  static RoutingControl get(
    String name,
    pulumi.Input<String> id, {
    RoutingControlState? state,
  }) {
    return RoutingControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoutingControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/routingControl:RoutingControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    controlPanelArn = registerOutput<String>('controlPanelArn');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
  }
}
