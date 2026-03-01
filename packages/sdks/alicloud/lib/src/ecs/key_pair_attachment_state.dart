// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPairAttachment resources.
class KeyPairAttachmentState {
  /// Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  final pulumi.Input<bool>? force;
  /// The list of ECS instance's IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// The name of key pair used to bind.
  final pulumi.Input<String>? keyName;
  final pulumi.Input<String>? keyPairName;

  /// Creates a new [KeyPairAttachmentState].
  /// [force] Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  /// [instanceIds] The list of ECS instance's IDs.
  /// [keyName] The name of key pair used to bind.
  /// [keyPairName] Optional.
  KeyPairAttachmentState({
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

  factory KeyPairAttachmentState.fromMap(Map<String, dynamic> map) {
    return KeyPairAttachmentState(
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
    );
  }
}

