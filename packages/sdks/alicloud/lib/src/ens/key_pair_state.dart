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
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? version,
  }) :
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'version': ?version,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

