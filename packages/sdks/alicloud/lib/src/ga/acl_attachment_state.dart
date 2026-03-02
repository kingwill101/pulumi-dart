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
    this.aclId,
    this.aclType,
    this.dryRun,
    this.listenerId,
    this.status,
  });

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
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      aclType: map['aclType'] == null ? null : (map['aclType'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

