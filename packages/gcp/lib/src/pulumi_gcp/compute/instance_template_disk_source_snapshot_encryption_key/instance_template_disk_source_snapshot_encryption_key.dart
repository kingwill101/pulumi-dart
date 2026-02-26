// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateDiskSourceSnapshotEncryptionKey {
  /// The self link of the encryption key that is
  /// stored in Google Cloud KMS. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`rsaEncryptedKey`" pulumi-lang-dotnet="`RsaEncryptedKey`" pulumi-lang-go="`rsaEncryptedKey`" pulumi-lang-python="`rsa_encrypted_key`" pulumi-lang-yaml="`rsaEncryptedKey`" pulumi-lang-java="`rsaEncryptedKey`">`rsa_encrypted_key`</span> and <span pulumi-lang-nodejs="`rawKey`" pulumi-lang-dotnet="`RawKey`" pulumi-lang-go="`rawKey`" pulumi-lang-python="`raw_key`" pulumi-lang-yaml="`rawKey`" pulumi-lang-java="`rawKey`">`raw_key`</span>
  /// may be set.
  final String? kmsKeySelfLink;

  /// The service account being used for the
  /// encryption request for the given KMS key. If absent, the Compute Engine
  /// default service account is used.
  final String? kmsKeyServiceAccount;

  /// A 256-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to decrypt this snapshot. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`rsaEncryptedKey`" pulumi-lang-dotnet="`RsaEncryptedKey`" pulumi-lang-go="`rsaEncryptedKey`" pulumi-lang-python="`rsa_encrypted_key`" pulumi-lang-yaml="`rsaEncryptedKey`" pulumi-lang-java="`rsaEncryptedKey`">`rsa_encrypted_key`</span> and <span pulumi-lang-nodejs="`rawKey`" pulumi-lang-dotnet="`RawKey`" pulumi-lang-go="`rawKey`" pulumi-lang-python="`raw_key`" pulumi-lang-yaml="`rawKey`" pulumi-lang-java="`rawKey`">`raw_key`</span>
  /// may be set.
  final String? rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to decrypt this snapshot. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`rsaEncryptedKey`" pulumi-lang-dotnet="`RsaEncryptedKey`" pulumi-lang-go="`rsaEncryptedKey`" pulumi-lang-python="`rsa_encrypted_key`" pulumi-lang-yaml="`rsaEncryptedKey`" pulumi-lang-java="`rsaEncryptedKey`">`rsa_encrypted_key`</span> and <span pulumi-lang-nodejs="`rawKey`" pulumi-lang-dotnet="`RawKey`" pulumi-lang-go="`rawKey`" pulumi-lang-python="`raw_key`" pulumi-lang-yaml="`rawKey`" pulumi-lang-java="`rawKey`">`raw_key`</span>
  /// may be set.
  final String? rsaEncryptedKey;

  InstanceTemplateDiskSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
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
    return map;
  }

  factory InstanceTemplateDiskSourceSnapshotEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateDiskSourceSnapshotEncryptionKey(
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
    );
  }
}
