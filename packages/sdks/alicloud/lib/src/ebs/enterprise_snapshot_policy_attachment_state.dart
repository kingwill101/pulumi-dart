// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseSnapshotPolicyAttachment resources.
class EnterpriseSnapshotPolicyAttachmentState {
  /// Cloud Disk ID.
  final pulumi.Input<String>? diskId;
  /// the enterprise snapshot policy id.
  final pulumi.Input<String>? policyId;

  /// Creates a new [EnterpriseSnapshotPolicyAttachmentState].
  /// [diskId] Cloud Disk ID.
  /// [policyId] the enterprise snapshot policy id.
  EnterpriseSnapshotPolicyAttachmentState({
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? policyId,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      policyId = pulumi.Input.asOptionalInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'policyId': ?policyId,
    };
  }

  factory EnterpriseSnapshotPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyAttachmentState(
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
    );
  }
}

