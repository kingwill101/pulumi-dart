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
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

