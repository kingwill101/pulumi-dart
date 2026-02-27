import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_args.dart';

/// Manages an EC2 Transit Gateway VPC Attachment. For examples of custom route table association and propagation, see the EC2 Transit Gateway Networking Examples Guide.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.VpcAttachment` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachment:VpcAttachment example tgw-attach-12345678
/// ```
class VpcAttachment extends pulumi.CustomResource {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> applianceModeSupport;

  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  late final pulumi.Output<bool> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  late final pulumi.Output<bool> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  late final pulumi.Output<String> vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  late final pulumi.Output<String> vpcOwnerId;

  VpcAttachment(
    String name, {
    VpcAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachment:VpcAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applianceModeSupport = registerOutput<String?>('applianceModeSupport');
    this.arn = registerOutput<String>('arn');
    this.dnsSupport = registerOutput<String?>('dnsSupport');
    this.ipv6Support = registerOutput<String?>('ipv6Support');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport =
        registerOutput<String>('securityGroupReferencingSupport');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
