// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_attachment.dart';
import 'interconnect_attachment_group_intent.dart';

/// {@template pulumi_compute_interconnect_attachment_group_interconnect_attachment_group_args_doc}
/// The set of arguments for InterconnectAttachmentGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_interconnect_attachment_group_interconnect_attachment_group_args_doc}
class InterconnectAttachmentGroupArgs {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupAttachment>>? attachments;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentGroupIntent> intent;

  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  final pulumi.Input<String>? interconnectGroup;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterconnectAttachmentGroupArgs].
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [intent] The user's intent for this group. This is the only required field besides
  /// [interconnectGroup] The URL of an InterconnectGroup that groups these Attachments'
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  InterconnectAttachmentGroupArgs({
    List<InterconnectAttachmentGroupAttachment>? attachments,
    String? description,
    required InterconnectAttachmentGroupIntent intent,
    String? interconnectGroup,
    String? name,
    String? project,
  })  : attachments = pulumi.Input.asOptionalInput<
            List<InterconnectAttachmentGroupAttachment>>(attachments),
        description = pulumi.Input.asOptionalInput<String>(description),
        intent =
            pulumi.Input.asInput<InterconnectAttachmentGroupIntent>(intent),
        interconnectGroup =
            pulumi.Input.asOptionalInput<String>(interconnectGroup),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentsValue = attachments;
    if (attachmentsValue != null) {
      map['attachments'] = pulumi.Input.mapOptionalInputValue<
              List<InterconnectAttachmentGroupAttachment>,
              List<Map<String, dynamic>>>(
          attachmentsValue,
          (value) => pulumi.Input.encodeList<
              InterconnectAttachmentGroupAttachment,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['intent'] = pulumi.Input.mapInputValue<
        InterconnectAttachmentGroupIntent,
        Map<String, dynamic>>(intent, (value) => value.toMap());
    final interconnectGroupValue = interconnectGroup;
    if (interconnectGroupValue != null) {
      map['interconnectGroup'] = interconnectGroupValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InterconnectAttachmentGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupArgs(
      attachments: map['attachments'] == null
          ? null
          : pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(
              map['attachments'],
              (value) => InterconnectAttachmentGroupAttachment.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      intent: InterconnectAttachmentGroupIntent.fromMap(
          (map['intent'] as Map).cast<String, dynamic>()),
      interconnectGroup: map['interconnectGroup'] == null
          ? null
          : map['interconnectGroup'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
