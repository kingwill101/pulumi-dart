// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclEntryAttachment resources.
class AclEntryAttachmentState {
  /// The ID of the ACL that the entry will be attached to.
  final pulumi.Input<String>? aclId;
  /// The comment for the entry.
  final pulumi.Input<String>? comment;
  /// The CIDR block of the entry to attach.
  final pulumi.Input<String>? entry;

  /// Creates a new [AclEntryAttachmentState].
  /// [aclId] The ID of the ACL that the entry will be attached to.
  /// [comment] The comment for the entry.
  /// [entry] The CIDR block of the entry to attach.
  AclEntryAttachmentState({
    this.aclId,
    this.comment,
    this.entry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'comment': ?comment,
      'entry': ?entry,
    };
  }

  factory AclEntryAttachmentState.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentState(
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      entry: map['entry'] == null ? null : (map['entry'] as String).input(),
    );
  }
}

