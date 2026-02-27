import 'package:pulumi/pulumi.dart';
import '../peering_attachment_options/peering_attachment_options.dart';
import 'peering_attachment_args.dart';

/// Manages an EC2 Transit Gateway Peering Attachment.
/// For examples of custom route table association and propagation, see the [EC2 Transit Gateway Networking Examples Guide](https://docs.aws.amazon.com/vpc/latest/tgw/TGW_Scenarios.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PeeringAttachment` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/peeringAttachment:PeeringAttachment example tgw-attach-12345678
/// ```
class PeeringAttachment extends CustomResource {
  /// ARN of the attachment.
  late final Output<String> arn;

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  late final Output<PeeringAttachmentOptions?> options;

  /// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> peerAccountId;

  /// Region of EC2 Transit Gateway to peer with.
  late final Output<String> peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  late final Output<String> peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> state;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  PeeringAttachment(
    String name, {
    PeeringAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/peeringAttachment:PeeringAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.options = registerOutput<PeeringAttachmentOptions?>('options');
    this.peerAccountId = registerOutput<String>('peerAccountId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerTransitGatewayId = registerOutput<String>('peerTransitGatewayId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
