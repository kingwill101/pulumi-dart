// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclAttachment resources.
class AclAttachmentState {
  /// The ID of an ACL.
  final pulumi.Input<String>? aclId;
  /// The type of the ACL. Valid values:
  final pulumi.Input<String>? aclType;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// The status of the Acl Attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [AclAttachmentState].
  /// [aclId] The ID of an ACL.
  /// [aclType] The type of the ACL. Valid values:
  /// [dryRun] The dry run.
  /// [listenerId] The ID of the listener.
  /// [status] The status of the Acl Attachment.
  AclAttachmentState({
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? aclType,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? status,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      aclType = pulumi.Input.asOptionalInput<String>(aclType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'aclType': ?aclType,
      'dryRun': ?dryRun,
      'listenerId': ?listenerId,
      'status': ?status,
    };
  }

  factory AclAttachmentState.fromMap(Map<String, dynamic> map) {
    return AclAttachmentState(
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      aclType: map['aclType'] == null ? null : pulumi.Output.create<String>(map['aclType'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

