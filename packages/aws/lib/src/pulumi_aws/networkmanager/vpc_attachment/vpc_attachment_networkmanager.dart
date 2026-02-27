import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_attachment_options/vpc_attachment_options.dart';
import 'vpc_attachment_networkmanager_args.dart';

/// Manages a Network Manager VPC attachment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with Options
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.VpcAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/vpcAttachment:VpcAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class VpcAttachmentNetworkmanager extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of a core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of a core network for the VPC attachment.
  late final pulumi.Output<String> coreNetworkId;

  /// Region where the edge is located.
  late final pulumi.Output<String> edgeLocation;

  /// Options for the VPC attachment. See below.
  late final pulumi.Output<VpcAttachmentOptions> options;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Subnet ARNs of the VPC attachment.
  late final pulumi.Output<List<String>> subnetArns;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcArn;

  VpcAttachmentNetworkmanager(
    String name, {
    VpcAttachmentNetworkmanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/vpcAttachment:VpcAttachment',
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
    this.options = registerOutput<VpcAttachmentOptions>('options');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.subnetArns = registerOutput<List<String>>('subnetArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcArn = registerOutput<String>('vpcArn');
  }
}
