import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_association_ec2transitgateway_args.dart';

/// Manages an EC2 Transit Gateway Route Table association.
///
/// ## Example Usage
///
///
///
/// ### Direct Connect Gateway Association
///
/// When associating a Direct Connect Gateway attachment, reference the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource (available in v6.5.0+):
///
///
///
/// > **NOTE:** Avoid using the `aws.ec2transitgateway.getDirectConnectGatewayAttachment` data source to retrieve the attachment ID, as this can cause unnecessary resource recreation when unrelated attributes of the Direct Connect Gateway association change (such as `allowed_prefixes`). Always reference the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource when available.
///
/// ### VPC Attachment Association
///
/// For VPC attachments, always reference the attachment resource's `id` attribute directly. Avoid using data sources or lifecycle rules that might cause the attachment ID to become unknown during planning:
///
///
///
/// > **NOTE:** When the `transit_gateway_attachment_id` changes (for example, when a VPC attachment is replaced), this resource will be recreated. This is the correct behavior to maintain consistency between the attachment and its route table association.
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.RouteTableAssociation` using the EC2 Transit Gateway Route Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTableAssociation:RouteTableAssociation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class RouteTableAssociationEc2transitgateway extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  late final pulumi.Output<bool?> replaceExistingAssociation;

  /// Identifier of the resource
  late final pulumi.Output<String> resourceId;

  /// Type of the resource
  late final pulumi.Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  RouteTableAssociationEc2transitgateway(
    String name, {
    RouteTableAssociationEc2transitgatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTableAssociation:RouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.replaceExistingAssociation =
        registerOutput<bool?>('replaceExistingAssociation');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
