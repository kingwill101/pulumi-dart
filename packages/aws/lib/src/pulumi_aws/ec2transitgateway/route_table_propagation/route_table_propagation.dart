import 'package:pulumi/pulumi.dart';
import 'route_table_propagation_args.dart';

/// Manages an EC2 Transit Gateway Route Table propagation.
///
/// ## Example Usage
///
///
///
/// ### Direct Connect Gateway Propagation
///
/// When propagating routes from a Direct Connect Gateway attachment, reference the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource (available in v6.5.0+):
///
///
///
/// > **NOTE:** Avoid using the `aws.ec2transitgateway.getDirectConnectGatewayAttachment` data source to retrieve the attachment ID, as this can cause unnecessary resource recreation when unrelated attributes of the Direct Connect Gateway association change (such as `allowed_prefixes`). Always reference the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource when available.
///
/// ### VPC Attachment Propagation
///
/// For VPC attachments, always reference the attachment resource's `id` attribute directly. Avoid using data sources or lifecycle rules that might cause the attachment ID to become unknown during planning:
///
///
///
/// > **NOTE:** When the `transit_gateway_attachment_id` changes (for example, when a VPC attachment is replaced), this resource will be recreated. This is the correct behavior to maintain consistency between the attachment and its route table propagation.
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.RouteTablePropagation` using the EC2 Transit Gateway Route Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTablePropagation:RouteTablePropagation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class RouteTablePropagation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the resource
  late final Output<String> resourceId;

  /// Type of the resource
  late final Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  late final Output<String> transitGatewayRouteTableId;

  RouteTablePropagation(
    String name, {
    RouteTablePropagationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTablePropagation:RouteTablePropagation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
