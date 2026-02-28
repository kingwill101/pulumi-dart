// ignore_for_file: unused_element, unnecessary_cast

import 'instance_from_template_boot_disk_initialize_params.dart';

class InstanceFromTemplateBootDisk {
  /// Whether the disk will be auto-deleted when the instance is deleted.
  final bool? autoDelete;

  /// Name with which attached disk will be accessible under /dev/disk/by-id/
  final String? deviceName;

  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final String? diskEncryptionKeyRaw;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final String? diskEncryptionKeyRsa;

  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  final String? diskEncryptionKeySha256;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  final String? diskEncryptionServiceAccount;

  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final bool? forceAttach;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images.
  final List<String>? guestOsFeatures;

  /// Parameters with which a disk was created alongside the instance.
  final InstanceFromTemplateBootDiskInitializeParams? initializeParams;

  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  final String? interface;

  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final String? kmsKeySelfLink;

  /// Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  final String? mode;

  /// The name or self_link of the disk attached to this instance.
  final String? source;

  /// Creates a new [InstanceFromTemplateBootDisk].
  /// [autoDelete] Whether the disk will be auto-deleted when the instance is deleted.
  /// [deviceName] Name with which attached disk will be accessible under /dev/disk/by-id/
  /// [diskEncryptionKeyRaw] A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [diskEncryptionKeySha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  /// [forceAttach] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images.
  /// [initializeParams] Parameters with which a disk was created alongside the instance.
  /// [interface] The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  /// [kmsKeySelfLink] The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [mode] Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  /// [source] The name or self_link of the disk attached to this instance.
  InstanceFromTemplateBootDisk({
    this.autoDelete,
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionKeySha256,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.guestOsFeatures,
    this.initializeParams,
    this.interface,
    this.kmsKeySelfLink,
    this.mode,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteValue = autoDelete;
    if (autoDeleteValue != null) {
      map['autoDelete'] = autoDeleteValue;
    }
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
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = guestOsFeaturesValue;
    }
    final initializeParamsValue = initializeParams;
    if (initializeParamsValue != null) {
      map['initializeParams'] = initializeParamsValue.toMap();
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    final kmsKeySelfLinkValue = kmsKeySelfLink;
    if (kmsKeySelfLinkValue != null) {
      map['kmsKeySelfLink'] = kmsKeySelfLinkValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory InstanceFromTemplateBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateBootDisk(
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
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
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : (map['guestOsFeatures'] as List).cast<String>(),
      initializeParams: map['initializeParams'] == null
          ? null
          : InstanceFromTemplateBootDiskInitializeParams.fromMap(
              (map['initializeParams'] as Map).cast<String, dynamic>()),
      interface: map['interface'] == null ? null : map['interface'] as String,
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
