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
    pulumi.Output<String>? diskId,
    required pulumi.Output<String> policyId,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      policyId = pulumi.Input.asInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'policyId': policyId,
    };
  }

  factory EnterpriseSnapshotPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyAttachmentArgs(
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
    );
  }
}

