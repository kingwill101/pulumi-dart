import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_accepter_args.dart';

/// Manages an AWS Network Manager Attachment Accepter.
///
/// Use this resource to accept cross-account attachments in AWS Network Manager. When an attachment is created in one account and needs to be accepted by another account that owns the core network, this resource handles the acceptance process.
///
/// ## Example Usage
///
/// ### VPC Attachment
///
///
///
/// ### Site-to-Site VPN Attachment
///
///
///
/// ### Connect Attachment
///
///
///
/// ### Transit Gateway Route Table Attachment
///
///
///
/// ### Direct Connect Gateway Attachment
class AttachmentAccepter extends pulumi.CustomResource {
  /// ID of the attachment.
  late final pulumi.Output<String> attachmentId;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  late final pulumi.Output<String> attachmentType;

  /// ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of the core network.
  late final pulumi.Output<String> coreNetworkId;

  /// Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return `edge_locations`.
  late final pulumi.Output<String> edgeLocation;

  /// Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return `edge_location`.
  late final pulumi.Output<List<String>> edgeLocations;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  AttachmentAccepter(
    String name, {
    AttachmentAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/attachmentAccepter:AttachmentAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.edgeLocations = registerOutput<List<String>>('edgeLocations');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
  }
}
