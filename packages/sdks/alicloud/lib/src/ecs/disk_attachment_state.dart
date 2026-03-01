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
    pulumi.Output<bool>? bootable,
    pulumi.Output<bool>? deleteWithInstance,
    pulumi.Output<String>? device,
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? password,
  }) :
      bootable = pulumi.Input.asOptionalInput<bool>(bootable),
      deleteWithInstance = pulumi.Input.asOptionalInput<bool>(deleteWithInstance),
      device = pulumi.Input.asOptionalInput<String>(device),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      password = pulumi.Input.asOptionalInput<String>(password);

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
      bootable: map['bootable'] == null ? null : pulumi.Output.create<bool>(map['bootable'] as bool),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : pulumi.Output.create<bool>(map['deleteWithInstance'] as bool),
      device: map['device'] == null ? null : pulumi.Output.create<String>(map['device'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
    );
  }
}

