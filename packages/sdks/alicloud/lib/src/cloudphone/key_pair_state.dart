// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// ADB key pair name.
  final pulumi.Input<String>? keyPairName;
  /// The public key of the key pair.
  final pulumi.Input<String>? publicKeyBody;

  /// Creates a new [KeyPairState].
  /// [keyPairName] ADB key pair name.
  /// [publicKeyBody] The public key of the key pair.
  const KeyPairState({
    this.keyPairName,
    this.publicKeyBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'publicKeyBody': ?publicKeyBody,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyBody: (() { final guardedValue = map['publicKeyBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

