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
    pulumi.Output<bool>? bootable,
    pulumi.Output<bool>? deleteWithInstance,
    required pulumi.Output<String> diskId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? password,
  }) :
      bootable = pulumi.Input.asOptionalInput<bool>(bootable),
      deleteWithInstance = pulumi.Input.asOptionalInput<bool>(deleteWithInstance),
      diskId = pulumi.Input.asInput<String>(diskId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      password = pulumi.Input.asOptionalInput<String>(password);

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
      bootable: map['bootable'] == null ? null : pulumi.Output.create<bool>(map['bootable'] as bool),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : pulumi.Output.create<bool>(map['deleteWithInstance'] as bool),
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
    );
  }
}

