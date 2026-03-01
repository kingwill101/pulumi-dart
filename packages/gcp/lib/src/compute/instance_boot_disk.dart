// ignore_for_file: unused_element, unnecessary_cast

import 'instance_boot_disk_initialize_params.dart';

class InstanceBootDisk {
  /// Whether the disk will be auto-deleted when the instance
  /// is deleted. Defaults to true.
  final bool? autoDelete;
  /// Name with which attached disk will be accessible.
  /// On the instance, this device will be `/dev/disk/by-id/google-{{device_name}}`.
  final String? deviceName;
  /// A 256-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final String? diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  final String? diskEncryptionKeyRsa;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) that protects this resource.
  final String? diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? diskEncryptionServiceAccount;
  /// boolean field that determines whether to force attach the regional
  /// disk even if it's currently attached to another instance. If you try to force attach a zonal
  /// disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final bool? forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  final List<String>? guestOsFeatures;
  /// Parameters for a new disk that will be created
  /// alongside the new instance. Either `initialize_params` or `source` must be set.
  /// Structure is documented below.
  final InstanceBootDiskInitializeParams? initializeParams;
  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  final String? interface;
  /// The self_link of the encryption key that is
  /// stored in Google Cloud KMS to encrypt this disk. Only one of `kms_key_self_link`,
  /// `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final String? kmsKeySelfLink;
  /// The mode in which to attach this disk, either `READ_WRITE`
  /// or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode.
  final String? mode;
  /// The name or self_link of the existing disk (such as those managed by
  /// `gcp.compute.Disk`) or disk image. To create an instance from a snapshot, first create a
  /// `gcp.compute.Disk` from a snapshot and reference it here.
  final String? source;

  /// Creates a new [InstanceBootDisk].
  /// [autoDelete] Whether the disk will be auto-deleted when the instance
  /// [deviceName] Name with which attached disk will be accessible.
  /// [diskEncryptionKeyRaw] A 256-bit [customer-supplied encryption key]
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// [diskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [forceAttach] boolean field that determines whether to force attach the regional
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  /// [initializeParams] Parameters for a new disk that will be created
  /// [interface] The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  /// [kmsKeySelfLink] The self_link of the encryption key that is
  /// [mode] The mode in which to attach this disk, either `READ_WRITE`
  /// [source] The name or self_link of the existing disk (such as those managed by
  InstanceBootDisk({
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
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'deviceName': ?deviceName,
      'diskEncryptionKeyRaw': ?diskEncryptionKeyRaw,
      'diskEncryptionKeyRsa': ?diskEncryptionKeyRsa,
      'diskEncryptionKeySha256': ?diskEncryptionKeySha256,
      'diskEncryptionServiceAccount': ?diskEncryptionServiceAccount,
      'forceAttach': ?forceAttach,
      'guestOsFeatures': ?guestOsFeatures,
      'initializeParams': ?initializeParams == null ? null : initializeParams!.toMap(),
      'interface': ?interface,
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': ?source,
    };
  }

  factory InstanceBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceBootDisk(
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] == null ? null : map['diskEncryptionKeyRaw'] as String,
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] == null ? null : map['diskEncryptionKeyRsa'] as String,
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] == null ? null : map['diskEncryptionKeySha256'] as String,
      diskEncryptionServiceAccount: map['diskEncryptionServiceAccount'] == null ? null : map['diskEncryptionServiceAccount'] as String,
      forceAttach: map['forceAttach'] == null ? null : map['forceAttach'] as bool,
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (map['guestOsFeatures'] as List).cast<String>(),
      initializeParams: map['initializeParams'] == null ? null : InstanceBootDiskInitializeParams.fromMap((map['initializeParams'] as Map).cast<String, dynamic>()),
      interface: map['interface'] == null ? null : map['interface'] as String,
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : map['kmsKeySelfLink'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

