// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_auto_snapshot_policy_attachment_ecs_auto_snapshot_policy_attachment_args_doc}
/// The set of arguments for EcsAutoSnapshotPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_auto_snapshot_policy_attachment_ecs_auto_snapshot_policy_attachment_args_doc}
class EcsAutoSnapshotPolicyAttachmentArgs {
  /// The ID of the automatic snapshot policy that is applied to the cloud disk.
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// The ID of the disk.
  final pulumi.Input<String> diskId;

  /// Creates a new [EcsAutoSnapshotPolicyAttachmentArgs].
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy that is applied to the cloud disk.
  /// [diskId] The ID of the disk.
  EcsAutoSnapshotPolicyAttachmentArgs({
    required pulumi.Output<String> autoSnapshotPolicyId,
    required pulumi.Output<String> diskId,
  }) :
      autoSnapshotPolicyId = pulumi.Input.asInput<String>(autoSnapshotPolicyId),
      diskId = pulumi.Input.asInput<String>(diskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'diskId': diskId,
    };
  }

  factory EcsAutoSnapshotPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EcsAutoSnapshotPolicyAttachmentArgs(
      autoSnapshotPolicyId: pulumi.Output.create<String>(map['autoSnapshotPolicyId'] as String),
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
    );
  }
}

