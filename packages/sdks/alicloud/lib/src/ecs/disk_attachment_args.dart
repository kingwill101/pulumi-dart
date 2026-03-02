// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_disk_attachment_disk_attachment_args_doc}
/// The set of arguments for DiskAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_disk_attachment_disk_attachment_args_doc}
class DiskAttachmentArgs {
  final pulumi.Input<bool>? bootable;
  final pulumi.Input<bool>? deleteWithInstance;
  /// ID of the Disk to be attached.
  final pulumi.Input<String> diskId;
  /// ID of the Instance to attach to.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? keyPairName;
  final pulumi.Input<String>? password;

  /// Creates a new [DiskAttachmentArgs].
  /// [bootable] Optional.
  /// [deleteWithInstance] Optional.
  /// [diskId] ID of the Disk to be attached.
  /// [instanceId] ID of the Instance to attach to.
  /// [keyPairName] Optional.
  /// [password] Optional.
  DiskAttachmentArgs({
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

  factory DiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentArgs(
      bootable: map['bootable'] == null ? null : (map['bootable'] as bool).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance'] as bool).input(),
      diskId: (map['diskId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

