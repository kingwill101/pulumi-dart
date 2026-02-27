import 'package:pulumi/pulumi.dart';
import 'vpc_attachment_accepter_args.dart';

/// Manages the accepter's side of an EC2 Transit Gateway VPC Attachment.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) EC2 Transit Gateway VPC Attachment
/// is created, an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
/// The requester can use the `aws.ec2transitgateway.VpcAttachment` resource to manage its side of the connection
/// and the accepter can use the `aws.ec2transitgateway.VpcAttachmentAccepter` resource to "adopt" its side of the
/// connection into management.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.VpcAttachmentAccepter` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter example tgw-attach-12345678
/// ```
class VpcAttachmentAccepter extends CustomResource {
  /// Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  late final Output<String> applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`.
  late final Output<String> dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  late final Output<String> ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  late final Output<String> securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  late final Output<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the EC2 Transit Gateway Attachment to manage.
  late final Output<String> transitGatewayAttachmentId;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  late final Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  late final Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  late final Output<String> vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  late final Output<String> vpcOwnerId;

  VpcAttachmentAccepter(
    String name, {
    VpcAttachmentAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applianceModeSupport = registerOutput<String>('applianceModeSupport');
    this.dnsSupport = registerOutput<String>('dnsSupport');
    this.ipv6Support = registerOutput<String>('ipv6Support');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport =
        registerOutput<String>('securityGroupReferencingSupport');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool?>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool?>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
