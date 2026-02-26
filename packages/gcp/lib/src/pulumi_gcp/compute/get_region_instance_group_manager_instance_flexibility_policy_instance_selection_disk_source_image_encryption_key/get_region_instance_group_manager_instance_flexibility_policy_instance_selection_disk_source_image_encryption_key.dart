// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String rsaEncryptedKey;

  GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    map['rawKey'] = rawKey;
    map['rsaEncryptedKey'] = rsaEncryptedKey;
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] as String,
    );
  }
}
