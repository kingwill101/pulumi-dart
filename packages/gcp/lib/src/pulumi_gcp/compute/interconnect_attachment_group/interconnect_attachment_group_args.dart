// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../interconnect_attachment_group_attachment/interconnect_attachment_group_attachment.dart';
import '../interconnect_attachment_group_intent/interconnect_attachment_group_intent.dart';

/// The set of arguments for InterconnectAttachmentGroup.
class InterconnectAttachmentGroupArgs {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final Input<List<InterconnectAttachmentGroupAttachment>>? attachments;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final Input<InterconnectAttachmentGroupIntent> intent;

  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  final Input<String>? interconnectGroup;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  InterconnectAttachmentGroupArgs({
    this.attachments,
    this.description,
    required this.intent,
    this.interconnectGroup,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentsValue = attachments;
    if (attachmentsValue != null) {
      map['attachments'] = Input.mapOptionalInputValue<
              List<InterconnectAttachmentGroupAttachment>,
              List<Map<String, dynamic>>>(
          attachmentsValue,
          (value) => Input.encodeList<InterconnectAttachmentGroupAttachment,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['intent'] = Input.mapInputValue<InterconnectAttachmentGroupIntent,
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
      attachments:
          Input.asOptionalInput<List<InterconnectAttachmentGroupAttachment>>(
              map['attachments']),
      description: Input.asOptionalInput<String>(map['description']),
      intent: Input.asInput<InterconnectAttachmentGroupIntent>(map['intent']),
      interconnectGroup:
          Input.asOptionalInput<String>(map['interconnectGroup']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
