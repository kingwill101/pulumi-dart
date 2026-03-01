// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_acl_entry_attachment_acl_entry_attachment_args_doc}
/// The set of arguments for AclEntryAttachment.
/// {@endtemplate}
/// {@macro pulumi_ga_acl_entry_attachment_acl_entry_attachment_args_doc}
class AclEntryAttachmentArgs {
  /// The ID of the Acl.
  final pulumi.Input<String> aclId;
  /// The entry (IP address or CIDR block) that you want to add.
  final pulumi.Input<String> entry;
  /// The description of the entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), and underscores (_).
  final pulumi.Input<String>? entryDescription;

  /// Creates a new [AclEntryAttachmentArgs].
  /// [aclId] The ID of the Acl.
  /// [entry] The entry (IP address or CIDR block) that you want to add.
  /// [entryDescription] The description of the entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), and underscores (_).
  AclEntryAttachmentArgs({
    required String aclId,
    required String entry,
    String? entryDescription,
  }) :
      aclId = pulumi.Input.asInput<String>(aclId),
      entry = pulumi.Input.asInput<String>(entry),
      entryDescription = pulumi.Input.asOptionalInput<String>(entryDescription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'entry': entry,
      'entryDescription': ?entryDescription,
    };
  }

  factory AclEntryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentArgs(
      aclId: map['aclId'] as String,
      entry: map['entry'] as String,
      entryDescription: map['entryDescription'] == null ? null : map['entryDescription'] as String,
    );
  }
}

