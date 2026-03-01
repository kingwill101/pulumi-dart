// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsKeyPairAttachment resources.
class EcsKeyPairAttachmentState {
  /// Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  final pulumi.Input<bool>? force;
  /// The list of ECS instance's IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// New field 'key_pair_name' instead.
  final pulumi.Input<String>? keyName;
  /// The name of key pair used to bind.
  final pulumi.Input<String>? keyPairName;

  /// Creates a new [EcsKeyPairAttachmentState].
  /// [force] Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  /// [instanceIds] The list of ECS instance's IDs.
  /// [keyName] New field 'key_pair_name' instead.
  /// [keyPairName] The name of key pair used to bind.
  EcsKeyPairAttachmentState({
    pulumi.Output<bool>? force,
    pulumi.Output<List<String>>? instanceIds,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyPairName,
  }) :
      force = pulumi.Input.asOptionalInput<bool>(force),
      instanceIds = pulumi.Input.asOptionalInput<List<String>>(instanceIds),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'instanceIds': ?instanceIds,
      'keyName': ?keyName,
      'keyPairName': ?keyPairName,
    };
  }

  factory EcsKeyPairAttachmentState.fromMap(Map<String, dynamic> map) {
    return EcsKeyPairAttachmentState(
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
    );
  }
}

