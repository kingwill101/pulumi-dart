import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_attachment_group_attachment/interconnect_attachment_group_attachment.dart';
import '../interconnect_attachment_group_configured/interconnect_attachment_group_configured.dart';
import '../interconnect_attachment_group_intent/interconnect_attachment_group_intent.dart';
import '../interconnect_attachment_group_logical_structure/interconnect_attachment_group_logical_structure.dart';
import 'interconnect_attachment_group_args.dart';

/// An interconnect attachment group resource allows customers to create,
/// analyze, and expand highly available deployments.
///
///
/// To get more information about InterconnectAttachmentGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)
/// * How-to Guides
/// * [Create a Dedicated Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/concepts/dedicated-overview)
///
/// ## Example Usage
///
/// ### Interconnect Attachment Group Basic
///
///
///
///
/// ## Import
///
/// InterconnectAttachmentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/interconnectAttachmentGroups/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InterconnectAttachmentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default projects/{{project}}/global/interconnectAttachmentGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default {{name}}
/// ```
class InterconnectAttachmentGroup extends pulumi.CustomResource {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupAttachment>?>
      attachments;

  /// The redundancy this group is configured to support. The way a
  /// user queries what SLA their Attachment gets is by looking at this field of
  /// the Attachment's AttachmentGroup.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupConfigured>>
      configureds;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  late final pulumi.Output<InterconnectAttachmentGroupIntent> intent;

  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  late final pulumi.Output<String?> interconnectGroup;

  /// An analysis of the logical layout of Attachments in this
  /// group. Every Attachment in the group is shown once in this structure.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupLogicalStructure>>
      logicalStructures;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  InterconnectAttachmentGroup(
    String name, {
    InterconnectAttachmentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachments =
        registerOutput<List<InterconnectAttachmentGroupAttachment>?>(
            'attachments');
    this.configureds =
        registerOutput<List<InterconnectAttachmentGroupConfigured>>(
            'configureds');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.intent = registerOutput<InterconnectAttachmentGroupIntent>('intent');
    this.interconnectGroup = registerOutput<String?>('interconnectGroup');
    this.logicalStructures =
        registerOutput<List<InterconnectAttachmentGroupLogicalStructure>>(
            'logicalStructures');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
