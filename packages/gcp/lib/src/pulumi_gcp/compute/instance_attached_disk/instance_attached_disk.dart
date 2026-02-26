// ignore_for_file: unused_element, unnecessary_cast

class InstanceAttachedDisk {
  /// Name with which the attached disk will be accessible
  /// under `/dev/disk/by-id/google-*`
  final String? deviceName;

  /// A 256-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
  /// may be set.
  final String? diskEncryptionKeyRaw;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
  /// may be set.
  final String? diskEncryptionKeyRsa;

  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) that protects this resource.
  final String? diskEncryptionKeySha256;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? diskEncryptionServiceAccount;

  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final bool? forceAttach;

  /// The<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the encryption key that is
  /// stored in Google Cloud KMS to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
  /// may be set.
  final String? kmsKeySelfLink;

  /// Either "READ_ONLY" or "READ_WRITE", defaults to "READ_WRITE"
  /// If you have a persistent disk with data that you want to share
  /// between multiple instances, detach it from any read-write instances and
  /// attach it to one or more instances in read-only mode.
  final String? mode;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the disk to attach to this instance.
  final String source;

  InstanceAttachedDisk({
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionKeySha256,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.kmsKeySelfLink,
    this.mode,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final diskEncryptionKeyRawValue = diskEncryptionKeyRaw;
    if (diskEncryptionKeyRawValue != null) {
      map['diskEncryptionKeyRaw'] = diskEncryptionKeyRawValue;
    }
    final diskEncryptionKeyRsaValue = diskEncryptionKeyRsa;
    if (diskEncryptionKeyRsaValue != null) {
      map['diskEncryptionKeyRsa'] = diskEncryptionKeyRsaValue;
    }
    final diskEncryptionKeySha256Value = diskEncryptionKeySha256;
    if (diskEncryptionKeySha256Value != null) {
      map['diskEncryptionKeySha256'] = diskEncryptionKeySha256Value;
    }
    final diskEncryptionServiceAccountValue = diskEncryptionServiceAccount;
    if (diskEncryptionServiceAccountValue != null) {
      map['diskEncryptionServiceAccount'] = diskEncryptionServiceAccountValue;
    }
    final forceAttachValue = forceAttach;
    if (forceAttachValue != null) {
      map['forceAttach'] = forceAttachValue;
    }
    final kmsKeySelfLinkValue = kmsKeySelfLink;
    if (kmsKeySelfLinkValue != null) {
      map['kmsKeySelfLink'] = kmsKeySelfLinkValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    map['source'] = source;
    return map;
  }

  factory InstanceAttachedDisk.fromMap(Map<String, dynamic> map) {
    return InstanceAttachedDisk(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] == null
          ? null
          : map['diskEncryptionKeyRaw'] as String,
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] == null
          ? null
          : map['diskEncryptionKeyRsa'] as String,
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] == null
          ? null
          : map['diskEncryptionKeySha256'] as String,
      diskEncryptionServiceAccount: map['diskEncryptionServiceAccount'] == null
          ? null
          : map['diskEncryptionServiceAccount'] as String,
      forceAttach:
          map['forceAttach'] == null ? null : map['forceAttach'] as bool,
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      source: map['source'] as String,
    );
  }
}
