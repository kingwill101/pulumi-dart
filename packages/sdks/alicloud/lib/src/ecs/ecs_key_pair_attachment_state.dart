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
    this.force,
    this.instanceIds,
    this.keyName,
    this.keyPairName,
  });

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
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

