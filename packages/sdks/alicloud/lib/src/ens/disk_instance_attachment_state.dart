// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskInstanceAttachment resources.
class DiskInstanceAttachmentState {
  /// Whether the cloud disk to be mounted is released with the instance  Value: true: When the instance is released, the cloud disk is released together with the instance. false: When the instance is released, the cloud disk is retained and is not released together with the instance. Empty means false by default.
  final pulumi.Input<String>? deleteWithInstance;
  /// The ID of the cloud disk to be mounted. The Cloud Disk (DiskId) and the instance (InstanceId) must be on the same node.
  final pulumi.Input<String>? diskId;
  /// Instance ID.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [DiskInstanceAttachmentState].
  /// [deleteWithInstance] Whether the cloud disk to be mounted is released with the instance  Value: true: When the instance is released, the cloud disk is released together with the instance. false: When the instance is released, the cloud disk is retained and is not released together with the instance. Empty means false by default.
  /// [diskId] The ID of the cloud disk to be mounted. The Cloud Disk (DiskId) and the instance (InstanceId) must be on the same node.
  /// [instanceId] Instance ID.
  DiskInstanceAttachmentState({
    pulumi.Output<String>? deleteWithInstance,
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? instanceId,
  }) :
      deleteWithInstance = pulumi.Input.asOptionalInput<String>(deleteWithInstance),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteWithInstance': ?deleteWithInstance,
      'diskId': ?diskId,
      'instanceId': ?instanceId,
    };
  }

  factory DiskInstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return DiskInstanceAttachmentState(
      deleteWithInstance: map['deleteWithInstance'] == null ? null : pulumi.Output.create<String>(map['deleteWithInstance'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

