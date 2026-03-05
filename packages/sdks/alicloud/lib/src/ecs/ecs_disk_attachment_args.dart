// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_disk_attachment_ecs_disk_attachment_args_doc}
/// The set of arguments for EcsDiskAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_disk_attachment_ecs_disk_attachment_args_doc}
class EcsDiskAttachmentArgs {
  /// Whether to mount as a system disk. Default to: `false`.
  final pulumi.Input<bool>? bootable;
  /// Indicates whether the disk is released together with the instance. Default to: `false`.
  final pulumi.Input<bool>? deleteWithInstance;
  /// ID of the Disk to be attached.
  final pulumi.Input<String> diskId;
  /// ID of the Instance to attach to.
  final pulumi.Input<String> instanceId;
  /// The name of key pair
  final pulumi.Input<String>? keyPairName;
  /// When mounting the system disk, setting the user name and password of the instance is only effective for the administrator and root user names, and other user names are not effective.
  final pulumi.Input<String>? password;

  /// Creates a new [EcsDiskAttachmentArgs].
  /// [bootable] Whether to mount as a system disk. Default to: `false`.
  /// [deleteWithInstance] Indicates whether the disk is released together with the instance. Default to: `false`.
  /// [diskId] ID of the Disk to be attached.
  /// [instanceId] ID of the Instance to attach to.
  /// [keyPairName] The name of key pair
  /// [password] When mounting the system disk, setting the user name and password of the instance is only effective for the administrator and root user names, and other user names are not effective.
  EcsDiskAttachmentArgs({
    this.bootable,
    this.deleteWithInstance,
    required this.diskId,
    required this.instanceId,
    this.keyPairName,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootable': ?bootable,
      'deleteWithInstance': ?deleteWithInstance,
      'diskId': diskId,
      'instanceId': instanceId,
      'keyPairName': ?keyPairName,
      'password': ?password,
    };
  }

  factory EcsDiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EcsDiskAttachmentArgs(
      bootable: (() { final guardedValue = map['bootable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteWithInstance: (() { final guardedValue = map['deleteWithInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

