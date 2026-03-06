// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsAutoSnapshotPolicyAttachment resources.
class EcsAutoSnapshotPolicyAttachmentState {
  /// The ID of the automatic snapshot policy that is applied to the cloud disk.
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// The ID of the disk.
  final pulumi.Input<String>? diskId;
  /// (Available since v1.271.0) The ID of the region where the automatic snapshot policy and the cloud disk are located.
  final pulumi.Input<String>? regionId;

  /// Creates a new [EcsAutoSnapshotPolicyAttachmentState].
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy that is applied to the cloud disk.
  /// [diskId] The ID of the disk.
  /// [regionId] (Available since v1.271.0) The ID of the region where the automatic snapshot policy and the cloud disk are located.
  const EcsAutoSnapshotPolicyAttachmentState({
    this.autoSnapshotPolicyId,
    this.diskId,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'diskId': ?diskId,
      'regionId': ?regionId,
    };
  }

  factory EcsAutoSnapshotPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return EcsAutoSnapshotPolicyAttachmentState(
      autoSnapshotPolicyId: (() { final guardedValue = map['autoSnapshotPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

