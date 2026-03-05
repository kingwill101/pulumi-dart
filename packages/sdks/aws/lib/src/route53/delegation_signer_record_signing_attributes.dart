// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DelegationSignerRecordSigningAttributes {
  /// Algorithm which was used to generate the digest from the public key.
  final pulumi.Input<int> algorithm;
  /// Defines the type of key. It can be either a KSK (key-signing-key, value `257`) or ZSK (zone-signing-key, value `256`).
  final pulumi.Input<int> flags;
  /// The base64-encoded public key part of the key pair that is passed to the registry.
  final pulumi.Input<String> publicKey;

  /// Creates a new [DelegationSignerRecordSigningAttributes].
  /// [algorithm] Algorithm which was used to generate the digest from the public key.
  /// [flags] Defines the type of key. It can be either a KSK (key-signing-key, value `257`) or ZSK (zone-signing-key, value `256`).
  /// [publicKey] The base64-encoded public key part of the key pair that is passed to the registry.
  DelegationSignerRecordSigningAttributes({
    required this.algorithm,
    required this.flags,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'flags': flags,
      'publicKey': publicKey,
    };
  }

  factory DelegationSignerRecordSigningAttributes.fromMap(Map<String, dynamic> map) {
    return DelegationSignerRecordSigningAttributes(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as int),
      flags: pulumi.Input.fromValue(map['flags'] as int),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}

