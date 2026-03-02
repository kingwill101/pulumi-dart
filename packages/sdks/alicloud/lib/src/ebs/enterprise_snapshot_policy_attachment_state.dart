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
    this.diskId,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'policyId': ?policyId,
    };
  }

  factory EnterpriseSnapshotPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyAttachmentState(
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
    );
  }
}

