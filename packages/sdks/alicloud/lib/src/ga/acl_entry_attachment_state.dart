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
    this.aclId,
    this.entry,
    this.entryDescription,
    this.status,
  });

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
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      entry: map['entry'] == null ? null : (map['entry'] as String).input(),
      entryDescription: map['entryDescription'] == null ? null : (map['entryDescription'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

