// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String? kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String? rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" rsaEncryptedKey " pulumi-lang-dotnet=" RsaEncryptedKey " pulumi-lang-go=" rsaEncryptedKey " pulumi-lang-python=" rsa_encrypted_key " pulumi-lang-yaml=" rsaEncryptedKey " pulumi-lang-java=" rsaEncryptedKey "> rsa_encrypted_key </span>and<span pulumi-lang-nodejs=" rawKey " pulumi-lang-dotnet=" RawKey " pulumi-lang-go=" rawKey " pulumi-lang-python=" raw_key " pulumi-lang-yaml=" rawKey " pulumi-lang-java=" rawKey "> raw_key </span>may be set.
  final String? rsaEncryptedKey;

  /// The SHA256 hash of the encryption key used to encrypt this disk.
  final String? sha256;

  InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeySelfLinkValue = kmsKeySelfLink;
    if (kmsKeySelfLinkValue != null) {
      map['kmsKeySelfLink'] = kmsKeySelfLinkValue;
    }
    final kmsKeyServiceAccountValue = kmsKeyServiceAccount;
    if (kmsKeyServiceAccountValue != null) {
      map['kmsKeyServiceAccount'] = kmsKeyServiceAccountValue;
    }
    final rawKeyValue = rawKey;
    if (rawKeyValue != null) {
      map['rawKey'] = rawKeyValue;
    }
    final rsaEncryptedKeyValue = rsaEncryptedKey;
    if (rsaEncryptedKeyValue != null) {
      map['rsaEncryptedKey'] = rsaEncryptedKeyValue;
    }
    final sha256Value = sha256;
    if (sha256Value != null) {
      map['sha256'] = sha256Value;
    }
    return map;
  }

  factory InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null
          ? null
          : map['rsaEncryptedKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
