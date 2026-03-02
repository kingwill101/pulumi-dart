// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// The name of the key pair.
  final pulumi.Input<String>? keyPairName;
  /// The version number.
  final pulumi.Input<String>? version;

  /// Creates a new [KeyPairState].
  /// [keyPairName] The name of the key pair.
  /// [version] The version number.
  KeyPairState({
    this.keyPairName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'version': ?version,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

