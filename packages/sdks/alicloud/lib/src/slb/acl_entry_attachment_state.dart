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
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? entry,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      entry = pulumi.Input.asOptionalInput<String>(entry);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'comment': ?comment,
      'entry': ?entry,
    };
  }

  factory AclEntryAttachmentState.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentState(
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      entry: map['entry'] == null ? null : pulumi.Output.create<String>(map['entry'] as String),
    );
  }
}

