// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceAttachedDisk {
  /// Name with which the attached disk is accessible
  /// under `/dev/disk/by-id/`
  final String deviceName;

  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String diskEncryptionKeyRaw;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String diskEncryptionKeyRsa;

  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (<https://cloud.google.com/compute/docs/disks/customer-supplied-encryption>) that protects this resource.
  final String diskEncryptionKeySha256;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  final String diskEncryptionServiceAccount;

  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final bool forceAttach;

  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String kmsKeySelfLink;

  /// Read/write mode for the disk. One of `"READ_ONLY"` or `"READ_WRITE"`.
  final String mode;

  /// The self_link of the disk attached to this instance.
  final String source;

  GetInstanceAttachedDisk({
    required this.deviceName,
    required this.diskEncryptionKeyRaw,
    required this.diskEncryptionKeyRsa,
    required this.diskEncryptionKeySha256,
    required this.diskEncryptionServiceAccount,
    required this.forceAttach,
    required this.kmsKeySelfLink,
    required this.mode,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['diskEncryptionKeyRaw'] = diskEncryptionKeyRaw;
    map['diskEncryptionKeyRsa'] = diskEncryptionKeyRsa;
    map['diskEncryptionKeySha256'] = diskEncryptionKeySha256;
    map['diskEncryptionServiceAccount'] = diskEncryptionServiceAccount;
    map['forceAttach'] = forceAttach;
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['mode'] = mode;
    map['source'] = source;
    return map;
  }

  factory GetInstanceAttachedDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachedDisk(
      deviceName: map['deviceName'] as String,
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] as String,
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] as String,
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] as String,
      diskEncryptionServiceAccount:
          map['diskEncryptionServiceAccount'] as String,
      forceAttach: map['forceAttach'] as bool,
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      mode: map['mode'] as String,
      source: map['source'] as String,
    );
  }
}
