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
    required pulumi.Output<String> aclId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> entry,
  }) :
      aclId = pulumi.Input.asInput<String>(aclId),
      description = pulumi.Input.asOptionalInput<String>(description),
      entry = pulumi.Input.asInput<String>(entry);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'description': ?description,
      'entry': entry,
    };
  }

  factory AclEntryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentArgs(
      aclId: pulumi.Output.create<String>(map['aclId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entry: pulumi.Output.create<String>(map['entry'] as String),
    );
  }
}

