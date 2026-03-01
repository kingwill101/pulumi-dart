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
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? entry,
    pulumi.Output<String>? status,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      description = pulumi.Input.asOptionalInput<String>(description),
      entry = pulumi.Input.asOptionalInput<String>(entry),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entry: map['entry'] == null ? null : pulumi.Output.create<String>(map['entry'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

