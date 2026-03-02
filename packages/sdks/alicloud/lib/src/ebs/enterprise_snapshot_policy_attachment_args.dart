// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_enterprise_snapshot_policy_attachment_enterprise_snapshot_policy_attachment_args_doc}
/// The set of arguments for EnterpriseSnapshotPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ebs_enterprise_snapshot_policy_attachment_enterprise_snapshot_policy_attachment_args_doc}
class EnterpriseSnapshotPolicyAttachmentArgs {
  /// Cloud Disk ID.
  final pulumi.Input<String>? diskId;
  /// the enterprise snapshot policy id.
  final pulumi.Input<String> policyId;

  /// Creates a new [EnterpriseSnapshotPolicyAttachmentArgs].
  /// [diskId] Cloud Disk ID.
  /// [policyId] the enterprise snapshot policy id.
  EnterpriseSnapshotPolicyAttachmentArgs({
    this.diskId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'policyId': policyId,
    };
  }

  factory EnterpriseSnapshotPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyAttachmentArgs(
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      policyId: (map['policyId'] as String).input(),
    );
  }
}

