// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_acl_entry_attachment_acl_entry_attachment_args_doc}
/// The set of arguments for AclEntryAttachment.
/// {@endtemplate}
/// {@macro pulumi_slb_acl_entry_attachment_acl_entry_attachment_args_doc}
class AclEntryAttachmentArgs {
  /// The ID of the Acl.
  final pulumi.Input<String> aclId;

  /// The comment of the entry.
  final pulumi.Input<String>? comment;

  /// The CIDR blocks.
  final pulumi.Input<String> entry;

  /// Creates a new [AclEntryAttachmentArgs].
  /// [aclId] The ID of the Acl.
  /// [comment] The comment of the entry.
  /// [entry] The CIDR blocks.
  AclEntryAttachmentArgs({
    required this.aclId,
    this.comment,
    required this.entry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'comment': ?comment,
      'entry': entry,
    };
  }

  factory AclEntryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentArgs(
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entry: pulumi.Input.fromValue(map['entry'] as String),
    );
  }
}
