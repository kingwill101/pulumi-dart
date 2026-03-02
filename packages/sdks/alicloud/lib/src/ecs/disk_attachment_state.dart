// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskAttachment resources.
class DiskAttachmentState {
  final pulumi.Input<bool>? bootable;
  final pulumi.Input<bool>? deleteWithInstance;
  final pulumi.Input<String>? device;
  /// ID of the Disk to be attached.
  final pulumi.Input<String>? diskId;
  /// ID of the Instance to attach to.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? keyPairName;
  final pulumi.Input<String>? password;

  /// Creates a new [DiskAttachmentState].
  /// [bootable] Optional.
  /// [deleteWithInstance] Optional.
  /// [device] Optional.
  /// [diskId] ID of the Disk to be attached.
  /// [instanceId] ID of the Instance to attach to.
  /// [keyPairName] Optional.
  /// [password] Optional.
  DiskAttachmentState({
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

  factory DiskAttachmentState.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentState(
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

