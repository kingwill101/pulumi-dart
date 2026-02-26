// ignore_for_file: unused_element, unnecessary_cast

import '../instance_from_template_boot_disk_initialize_params/instance_from_template_boot_disk_initialize_params.dart';

class InstanceFromTemplateBootDisk {
  /// Whether the disk will be auto-deleted when the instance is deleted.
  final bool? autoDelete;

  /// Name with which attached disk will be accessible under /dev/disk/by-id/
  final String? deviceName;

  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" diskEncryptionKeyRaw " pulumi-lang-dotnet=" DiskEncryptionKeyRaw " pulumi-lang-go=" diskEncryptionKeyRaw " pulumi-lang-python=" disk_encryption_key_raw " pulumi-lang-yaml=" diskEncryptionKeyRaw " pulumi-lang-java=" diskEncryptionKeyRaw "> disk_encryption_key_raw </span>and<span pulumi-lang-nodejs=" diskEncryptionKeyRsa " pulumi-lang-dotnet=" DiskEncryptionKeyRsa " pulumi-lang-go=" diskEncryptionKeyRsa " pulumi-lang-python=" disk_encryption_key_rsa " pulumi-lang-yaml=" diskEncryptionKeyRsa " pulumi-lang-java=" diskEncryptionKeyRsa "> disk_encryption_key_rsa </span>may be set.
  final String? diskEncryptionKeyRaw;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" diskEncryptionKeyRaw " pulumi-lang-dotnet=" DiskEncryptionKeyRaw " pulumi-lang-go=" diskEncryptionKeyRaw " pulumi-lang-python=" disk_encryption_key_raw " pulumi-lang-yaml=" diskEncryptionKeyRaw " pulumi-lang-java=" diskEncryptionKeyRaw "> disk_encryption_key_raw </span>and<span pulumi-lang-nodejs=" diskEncryptionKeyRsa " pulumi-lang-dotnet=" DiskEncryptionKeyRsa " pulumi-lang-go=" diskEncryptionKeyRsa " pulumi-lang-python=" disk_encryption_key_rsa " pulumi-lang-yaml=" diskEncryptionKeyRsa " pulumi-lang-java=" diskEncryptionKeyRsa "> disk_encryption_key_rsa </span>may be set.
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

  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with<span pulumi-lang-nodejs=" attachedDisk " pulumi-lang-dotnet=" AttachedDisk " pulumi-lang-go=" attachedDisk " pulumi-lang-python=" attached_disk " pulumi-lang-yaml=" attachedDisk " pulumi-lang-java=" attachedDisk "> attached_disk </span>and only used for specific cases, please don't specify this field without advice from Google.)
  final String? interface;

  /// The<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link,<span pulumi-lang-nodejs=" diskEncryptionKeyRaw " pulumi-lang-dotnet=" DiskEncryptionKeyRaw " pulumi-lang-go=" diskEncryptionKeyRaw " pulumi-lang-python=" disk_encryption_key_raw " pulumi-lang-yaml=" diskEncryptionKeyRaw " pulumi-lang-java=" diskEncryptionKeyRaw "> disk_encryption_key_raw </span>and<span pulumi-lang-nodejs=" diskEncryptionKeyRsa " pulumi-lang-dotnet=" DiskEncryptionKeyRsa " pulumi-lang-go=" diskEncryptionKeyRsa " pulumi-lang-python=" disk_encryption_key_rsa " pulumi-lang-yaml=" diskEncryptionKeyRsa " pulumi-lang-java=" diskEncryptionKeyRsa "> disk_encryption_key_rsa </span>may be set.
  final String? kmsKeySelfLink;

  /// Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  final String? mode;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the disk attached to this instance.
  final String? source;

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
