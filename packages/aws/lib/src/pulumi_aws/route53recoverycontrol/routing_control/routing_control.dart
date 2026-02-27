import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_control_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Routing Control.
///
/// ## Example Usage
///
///
///
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
    this.arn = registerOutput<String>('arn');
    this.clusterArn = registerOutput<String>('clusterArn');
    this.controlPanelArn = registerOutput<String>('controlPanelArn');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
  }
}
