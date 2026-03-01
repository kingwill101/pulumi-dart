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
    bool? bootable,
    bool? deleteWithInstance,
    required String diskId,
    required String instanceId,
    String? keyPairName,
    String? password,
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

  factory DiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentArgs(
      bootable: map['bootable'] == null ? null : map['bootable'] as bool,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as bool,
      diskId: map['diskId'] as String,
      instanceId: map['instanceId'] as String,
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

