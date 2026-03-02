// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclEntryAttachment resources.
class AclEntryAttachmentState {
  /// The ID of the Acl.
  final pulumi.Input<String>? aclId;
  /// The description of the entry.
  final pulumi.Input<String>? description;
  /// The CIDR blocks.
  final pulumi.Input<String>? entry;
  /// The Status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [AclEntryAttachmentState].
  /// [aclId] The ID of the Acl.
  /// [description] The description of the entry.
  /// [entry] The CIDR blocks.
  /// [status] The Status of the resource.
  AclEntryAttachmentState({
    this.aclId,
    this.description,
    this.entry,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'description': ?description,
      'entry': ?entry,
      'status': ?status,
    };
  }

  factory AclEntryAttachmentState.fromMap(Map<String, dynamic> map) {
    return AclEntryAttachmentState(
      aclId: map['aclId'] == null ? null : (map['aclId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      entry: map['entry'] == null ? null : (map['entry']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

