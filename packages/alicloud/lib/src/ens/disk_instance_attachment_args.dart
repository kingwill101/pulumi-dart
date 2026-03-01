// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_disk_instance_attachment_disk_instance_attachment_args_doc}
/// The set of arguments for DiskInstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_ens_disk_instance_attachment_disk_instance_attachment_args_doc}
class DiskInstanceAttachmentArgs {
  /// Whether the cloud disk to be mounted is released with the instance  Value: true: When the instance is released, the cloud disk is released together with the instance. false: When the instance is released, the cloud disk is retained and is not released together with the instance. Empty means false by default.
  final pulumi.Input<String>? deleteWithInstance;
  /// The ID of the cloud disk to be mounted. The Cloud Disk (DiskId) and the instance (InstanceId) must be on the same node.
  final pulumi.Input<String> diskId;
  /// Instance ID.
  final pulumi.Input<String> instanceId;

  /// Creates a new [DiskInstanceAttachmentArgs].
  /// [deleteWithInstance] Whether the cloud disk to be mounted is released with the instance  Value: true: When the instance is released, the cloud disk is released together with the instance. false: When the instance is released, the cloud disk is retained and is not released together with the instance. Empty means false by default.
  /// [diskId] The ID of the cloud disk to be mounted. The Cloud Disk (DiskId) and the instance (InstanceId) must be on the same node.
  /// [instanceId] Instance ID.
  DiskInstanceAttachmentArgs({
    String? deleteWithInstance,
    required String diskId,
    required String instanceId,
  }) :
      deleteWithInstance = pulumi.Input.asOptionalInput<String>(deleteWithInstance),
      diskId = pulumi.Input.asInput<String>(diskId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteWithInstance': ?deleteWithInstance,
      'diskId': diskId,
      'instanceId': instanceId,
    };
  }

  factory DiskInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskInstanceAttachmentArgs(
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as String,
      diskId: map['diskId'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

