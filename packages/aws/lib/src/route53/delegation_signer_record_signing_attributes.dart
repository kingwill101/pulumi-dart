// ignore_for_file: unused_element, unnecessary_cast

class DelegationSignerRecordSigningAttributes {
  /// Algorithm which was used to generate the digest from the public key.
  final int algorithm;

  /// Defines the type of key. It can be either a KSK (key-signing-key, value `257`) or ZSK (zone-signing-key, value `256`).
  final int flags;

  /// The base64-encoded public key part of the key pair that is passed to the registry.
  final String publicKey;

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
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['flags'] = flags;
    map['publicKey'] = publicKey;
    return map;
  }

  factory DelegationSignerRecordSigningAttributes.fromMap(
      Map<String, dynamic> map) {
    return DelegationSignerRecordSigningAttributes(
      algorithm: map['algorithm'] as int,
      flags: map['flags'] as int,
      publicKey: map['publicKey'] as String,
    );
  }
}
