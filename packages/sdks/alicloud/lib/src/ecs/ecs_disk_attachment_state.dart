// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsDiskAttachment resources.
class EcsDiskAttachmentState {
  /// Whether to mount as a system disk. Default to: `false`.
  final pulumi.Input<bool>? bootable;
  /// Indicates whether the disk is released together with the instance. Default to: `false`.
  final pulumi.Input<bool>? deleteWithInstance;
  /// The name of the cloud disk device.
  final pulumi.Input<String>? device;
  /// ID of the Disk to be attached.
  final pulumi.Input<String>? diskId;
  /// ID of the Instance to attach to.
  final pulumi.Input<String>? instanceId;
  /// The name of key pair
  final pulumi.Input<String>? keyPairName;
  /// When mounting the system disk, setting the user name and password of the instance is only effective for the administrator and root user names, and other user names are not effective.
  final pulumi.Input<String>? password;

  /// Creates a new [EcsDiskAttachmentState].
  /// [bootable] Whether to mount as a system disk. Default to: `false`.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance. Default to: `false`.
  /// [device] The name of the cloud disk device.
  /// [diskId] ID of the Disk to be attached.
  /// [instanceId] ID of the Instance to attach to.
  /// [keyPairName] The name of key pair
  /// [password] When mounting the system disk, setting the user name and password of the instance is only effective for the administrator and root user names, and other user names are not effective.
  EcsDiskAttachmentState({
    this.bootable,
    this.deleteWithInstance,
    this.device,
    this.diskId,
    this.instanceId,
    this.keyPairName,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootable': ?bootable,
      'deleteWithInstance': ?deleteWithInstance,
      'device': ?device,
      'diskId': ?diskId,
      'instanceId': ?instanceId,
      'keyPairName': ?keyPairName,
      'password': ?password,
    };
  }

  factory EcsDiskAttachmentState.fromMap(Map<String, dynamic> map) {
    return EcsDiskAttachmentState(
      bootable: map['bootable'] == null ? null : (map['bootable'] as bool).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance'] as bool).input(),
      device: map['device'] == null ? null : (map['device'] as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

