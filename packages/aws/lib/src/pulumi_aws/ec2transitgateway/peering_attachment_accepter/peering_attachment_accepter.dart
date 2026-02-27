import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_attachment_accepter_args.dart';

/// Manages the accepter's side of an EC2 Transit Gateway Peering Attachment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PeeringAttachmentAccepter` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/peeringAttachmentAccepter:PeeringAttachmentAccepter example tgw-attach-12345678
/// ```
class PeeringAttachmentAccepter extends pulumi.CustomResource {
  /// Identifier of the AWS account that owns the EC2 TGW peering.
  late final pulumi.Output<String> peerAccountId;
  late final pulumi.Output<String> peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  late final pulumi.Output<String> peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the EC2 Transit Gateway Peering Attachment to manage.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  PeeringAttachmentAccepter(
    String name, {
    PeeringAttachmentAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/peeringAttachmentAccepter:PeeringAttachmentAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.peerAccountId = registerOutput<String>('peerAccountId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerTransitGatewayId = registerOutput<String>('peerTransitGatewayId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
