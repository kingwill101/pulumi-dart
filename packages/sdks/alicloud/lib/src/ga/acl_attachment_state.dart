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
      aclId: (() { final guardedValue = map['aclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclType: (() { final guardedValue = map['aclType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

