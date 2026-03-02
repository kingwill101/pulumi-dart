// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclEntryAttachment resources.
class AclEntryAttachmentState {
  /// The ID of the Acl.
  final pulumi.Input<String>? aclId;
  /// The comment of the entry.
  final pulumi.Input<String>? comment;
  /// The CIDR blocks.
  final pulumi.Input<String>? entry;

  /// Creates a new [AclEntryAttachmentState].
  /// [aclId] The ID of the Acl.
  /// [comment] The comment of the entry.
  /// [entry] The CIDR blocks.
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
      aclId: map['aclId'] == null ? null : (map['aclId']! as String).input(),
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      entry: map['entry'] == null ? null : (map['entry']! as String).input(),
    );
  }
}

