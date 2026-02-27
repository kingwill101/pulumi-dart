import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_gateway_route_table_attachment_args.dart';

/// Manages a Network Manager transit gateway route table attachment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayRouteTableAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class TransitGatewayRouteTableAttachment extends pulumi.CustomResource {
  /// Attachment ARN.
  late final pulumi.Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of the core network.
  late final pulumi.Output<String> coreNetworkId;

  /// Edge location for the peer.
  late final pulumi.Output<String> edgeLocation;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// ID of the peer for the attachment.
  late final pulumi.Output<String> peeringId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the transit gateway route table for the attachment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayRouteTableArn;

  TransitGatewayRouteTableAttachment(
    String name, {
    TransitGatewayRouteTableAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.peeringId = registerOutput<String>('peeringId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayRouteTableArn =
        registerOutput<String>('transitGatewayRouteTableArn');
  }
}
