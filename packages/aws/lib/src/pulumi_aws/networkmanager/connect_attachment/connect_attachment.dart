import 'package:pulumi/pulumi.dart' as pulumi;
import '../connect_attachment_options/connect_attachment_options.dart';
import 'connect_attachment_args.dart';

/// Manages an AWS Network Manager Connect Attachment.
///
/// Use this resource to create a Connect attachment in AWS Network Manager. Connect attachments enable you to connect your on-premises networks to your core network through a VPC or Transit Gateway attachment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with attachment accepter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.ConnectAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connectAttachment:ConnectAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class ConnectAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// ID of the attachment.
  late final pulumi.Output<String> attachmentId;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of a core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of a core network where you want to create the attachment.
  late final pulumi.Output<String> coreNetworkId;

  /// Region where the edge is located.
  late final pulumi.Output<String> edgeLocation;

  /// Options block. See options for more information.
  late final pulumi.Output<ConnectAttachmentOptions> options;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// The routing policy label to apply to the Connect attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the attachment between the two connections.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transportAttachmentId;

  ConnectAttachment(
    String name, {
    ConnectAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connectAttachment:ConnectAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentId = registerOutput<String>('attachmentId');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.options = registerOutput<ConnectAttachmentOptions>('options');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transportAttachmentId =
        registerOutput<String>('transportAttachmentId');
  }
}
