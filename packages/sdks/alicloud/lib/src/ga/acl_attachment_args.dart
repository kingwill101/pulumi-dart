// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_acl_attachment_acl_attachment_args_doc}
/// The set of arguments for AclAttachment.
/// {@endtemplate}
/// {@macro pulumi_ga_acl_attachment_acl_attachment_args_doc}
class AclAttachmentArgs {
  /// The ID of an ACL.
  final pulumi.Input<String> aclId;
  /// The type of the ACL. Valid values:
  final pulumi.Input<String> aclType;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the listener.
  final pulumi.Input<String> listenerId;

  /// Creates a new [AclAttachmentArgs].
  /// [aclId] The ID of an ACL.
  /// [aclType] The type of the ACL. Valid values:
  /// [dryRun] The dry run.
  /// [listenerId] The ID of the listener.
  AclAttachmentArgs({
    required this.aclId,
    required this.aclType,
    this.dryRun,
    required this.listenerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'aclType': aclType,
      'dryRun': ?dryRun,
      'listenerId': listenerId,
    };
  }

  factory AclAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AclAttachmentArgs(
      aclId: (map['aclId'] as String).input(),
      aclType: (map['aclType'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      listenerId: (map['listenerId'] as String).input(),
    );
  }
}

