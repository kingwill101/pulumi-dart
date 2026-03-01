// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// The Key Name.
  final pulumi.Input<String>? keyPairName;
  /// The public key body.
  final pulumi.Input<String>? publicKeyBody;

  /// Creates a new [KeyPairState].
  /// [keyPairName] The Key Name.
  /// [publicKeyBody] The public key body.
  KeyPairState({
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? publicKeyBody,
  }) :
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      publicKeyBody = pulumi.Input.asOptionalInput<String>(publicKeyBody);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'publicKeyBody': ?publicKeyBody,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      publicKeyBody: map['publicKeyBody'] == null ? null : pulumi.Output.create<String>(map['publicKeyBody'] as String),
    );
  }
}

