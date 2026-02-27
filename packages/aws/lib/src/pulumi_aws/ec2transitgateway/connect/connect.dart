import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_args.dart';

/// Manages an EC2 Transit Gateway Connect.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.Connect` using the EC2 Transit Gateway Connect identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/connect:Connect example tgw-attach-12345678
/// ```
class Connect extends pulumi.CustomResource {
  /// The tunnel protocol. Valid values: `gre`. Default is `gre`.
  late final pulumi.Output<String?> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// The underlaying VPC attachment
  late final pulumi.Output<String> transportAttachmentId;

  Connect(
    String name, {
    ConnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/connect:Connect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.protocol = registerOutput<String?>('protocol');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool?>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool?>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.transportAttachmentId =
        registerOutput<String>('transportAttachmentId');
  }
}
