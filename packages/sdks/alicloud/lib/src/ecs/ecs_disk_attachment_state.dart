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
      bootable: (() {
        final guardedValue = map['bootable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deleteWithInstance: (() {
        final guardedValue = map['deleteWithInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      device: (() {
        final guardedValue = map['device'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyPairName: (() {
        final guardedValue = map['keyPairName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
