// ignore_for_file: unused_element, unnecessary_cast

class DelegationSignerRecordSigningAttributes {
  /// Algorithm which was used to generate the digest from the public key.
  final int algorithm;

  /// Defines the type of key. It can be either a KSK (key-signing-key, value <span pulumi-lang-nodejs="`257`" pulumi-lang-dotnet="`257`" pulumi-lang-go="`257`" pulumi-lang-python="`257`" pulumi-lang-yaml="`257`" pulumi-lang-java="`257`">`257`</span>) or ZSK (zone-signing-key, value <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>).
  final int flags;

  /// The base64-encoded public key part of the key pair that is passed to the registry.
  final String publicKey;

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
