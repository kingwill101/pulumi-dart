// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_acl_entry_attachment_acl_entry_attachment_args_doc}
/// The set of arguments for AclEntryAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigateway_acl_entry_attachment_acl_entry_attachment_args_doc}
class AclEntryAttachmentArgs {
  /// The ID of the ACL that the entry will be attached to.
  final pulumi.Input<String> aclId;
  /// The comment for the entry.
  final pulumi.Input<String>? comment;
  /// The CIDR block of the entry to attach.
  final pulumi.Input<String> entry;

  /// Creates a new [AclEntryAttachmentArgs].
  /// [aclId] The ID of the ACL that the entry will be attached to.
  /// [comment] The comment for the entry.
  /// [entry] The CIDR block of the entry to attach.
  AclEntryAttachmentArgs({
    required String aclId,
    String? comment,
    required String entry,
  }) :
      aclId = pulumi.Input.asInput<String>(aclId),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      entry = pulumi.Input.asInput<String>(entry);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'comment': ?comment,
      'entry': entry,
    };
  }

  factory AclEntryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentArgs(
      aclId: map['aclId'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      entry: map['entry'] as String,
    );
  }
}

