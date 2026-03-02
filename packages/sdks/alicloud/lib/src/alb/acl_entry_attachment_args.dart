// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_acl_entry_attachment_acl_entry_attachment_args_doc}
/// The set of arguments for AclEntryAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_acl_entry_attachment_acl_entry_attachment_args_doc}
class AclEntryAttachmentArgs {
  /// The ID of the Acl.
  final pulumi.Input<String> aclId;
  /// The description of the entry.
  final pulumi.Input<String>? description;
  /// The CIDR blocks.
  final pulumi.Input<String> entry;

  /// Creates a new [AclEntryAttachmentArgs].
  /// [aclId] The ID of the Acl.
  /// [description] The description of the entry.
  /// [entry] The CIDR blocks.
  AclEntryAttachmentArgs({
    required this.aclId,
    this.description,
    required this.entry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'description': ?description,
      'entry': entry,
    };
  }

  factory AclEntryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentArgs(
      aclId: (map['aclId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      entry: (map['entry'] as String).input(),
    );
  }
}

