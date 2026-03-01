// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclEntryAttachment resources.
class AclEntryAttachmentState {
  /// The ID of the Acl.
  final pulumi.Input<String>? aclId;
  /// The entry (IP address or CIDR block) that you want to add.
  final pulumi.Input<String>? entry;
  /// The description of the entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), and underscores (_).
  final pulumi.Input<String>? entryDescription;
  /// The status of the Acl Entry Attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [AclEntryAttachmentState].
  /// [aclId] The ID of the Acl.
  /// [entry] The entry (IP address or CIDR block) that you want to add.
  /// [entryDescription] The description of the entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), and underscores (_).
  /// [status] The status of the Acl Entry Attachment.
  AclEntryAttachmentState({
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? entry,
    pulumi.Output<String>? entryDescription,
    pulumi.Output<String>? status,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      entry = pulumi.Input.asOptionalInput<String>(entry),
      entryDescription = pulumi.Input.asOptionalInput<String>(entryDescription),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'entry': ?entry,
      'entryDescription': ?entryDescription,
      'status': ?status,
    };
  }

  factory AclEntryAttachmentState.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentState(
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      entry: map['entry'] == null ? null : pulumi.Output.create<String>(map['entry'] as String),
      entryDescription: map['entryDescription'] == null ? null : pulumi.Output.create<String>(map['entryDescription'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

