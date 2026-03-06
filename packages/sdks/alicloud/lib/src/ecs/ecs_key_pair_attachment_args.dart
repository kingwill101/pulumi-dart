// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_key_pair_attachment_ecs_key_pair_attachment_args_doc}
/// The set of arguments for EcsKeyPairAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_key_pair_attachment_ecs_key_pair_attachment_args_doc}
class EcsKeyPairAttachmentArgs {
  /// Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  final pulumi.Input<bool>? force;
  /// The list of ECS instance's IDs.
  final pulumi.Input<List<String>> instanceIds;
  /// New field 'key_pair_name' instead.
  final pulumi.Input<String>? keyName;
  /// The name of key pair used to bind.
  final pulumi.Input<String>? keyPairName;

  /// Creates a new [EcsKeyPairAttachmentArgs].
  /// [force] Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  /// [instanceIds] The list of ECS instance's IDs.
  /// [keyName] New field 'key_pair_name' instead.
  /// [keyPairName] The name of key pair used to bind.
  const EcsKeyPairAttachmentArgs({
    this.force,
    required this.instanceIds,
    this.keyName,
    this.keyPairName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'instanceIds': instanceIds,
      'keyName': ?keyName,
      'keyPairName': ?keyPairName,
    };
  }

  factory EcsKeyPairAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EcsKeyPairAttachmentArgs(
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceIds: pulumi.Input.fromValue((map['instanceIds'] as List).cast<String>()),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

