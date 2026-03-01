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
  EcsKeyPairAttachmentArgs({
    bool? force,
    required List<String> instanceIds,
    String? keyName,
    String? keyPairName,
  }) :
      force = pulumi.Input.asOptionalInput<bool>(force),
      instanceIds = pulumi.Input.asInput<List<String>>(instanceIds),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName);

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
      force: map['force'] == null ? null : map['force'] as bool,
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
    );
  }
}

