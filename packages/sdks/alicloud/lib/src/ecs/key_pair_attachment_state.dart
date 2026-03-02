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

  factory KeyPairAttachmentState.fromMap(Map<String, dynamic> map) {
    return KeyPairAttachmentState(
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
    );
  }
}

