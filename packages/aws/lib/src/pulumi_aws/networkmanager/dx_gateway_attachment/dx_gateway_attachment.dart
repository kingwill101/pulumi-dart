import 'package:pulumi/pulumi.dart' as pulumi;
import '../dx_gateway_attachment_timeouts/dx_gateway_attachment_timeouts.dart';
import 'dx_gateway_attachment_args.dart';

/// Manages a Network Manager Direct Connect Gateway Attachment.
///
/// Use this resource to create and manage a Direct Connect Gateway attachment to a Cloud WAN core network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Manager DX Gateway Attachment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment example attachment-1a2b3c4d5e6f7g
/// ```
class DxGatewayAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of the core network for the attachment.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  late final pulumi.Output<String> coreNetworkId;

  /// ARN of the Direct Connect gateway attachment.
  late final pulumi.Output<String> directConnectGatewayArn;

  /// One or more core network edge locations to associate with the Direct Connect gateway attachment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> edgeLocations;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DxGatewayAttachmentTimeouts?> timeouts;

  DxGatewayAttachment(
    String name, {
    DxGatewayAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment',
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
    this.directConnectGatewayArn =
        registerOutput<String>('directConnectGatewayArn');
    this.edgeLocations = registerOutput<List<String>>('edgeLocations');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<DxGatewayAttachmentTimeouts?>('timeouts');
  }
}
