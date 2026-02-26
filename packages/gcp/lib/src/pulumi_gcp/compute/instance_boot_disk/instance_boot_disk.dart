// ignore_for_file: unused_element, unnecessary_cast

import '../instance_boot_disk_initialize_params/instance_boot_disk_initialize_params.dart';

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
  /// to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
  /// may be set.
  final String? diskEncryptionKeyRaw;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>, <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
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
  /// alongside the new instance. Either <span pulumi-lang-nodejs="`initializeParams`" pulumi-lang-dotnet="`InitializeParams`" pulumi-lang-go="`initializeParams`" pulumi-lang-python="`initialize_params`" pulumi-lang-yaml="`initializeParams`" pulumi-lang-java="`initializeParams`">`initialize_params`</span> or <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> must be set.
  /// Structure is documented below.
  final InstanceBootDiskInitializeParams? initializeParams;

  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with<span pulumi-lang-nodejs=" attachedDisk " pulumi-lang-dotnet=" AttachedDisk " pulumi-lang-go=" attachedDisk " pulumi-lang-python=" attached_disk " pulumi-lang-yaml=" attachedDisk " pulumi-lang-java=" attachedDisk "> attached_disk </span>and only used for specific cases, please don't specify this field without advice from Google.)
  final String? interface;

  /// The<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the encryption key that is
  /// stored in Google Cloud KMS to encrypt this disk. Only one of <span pulumi-lang-nodejs="`kmsKeySelfLink`" pulumi-lang-dotnet="`KmsKeySelfLink`" pulumi-lang-go="`kmsKeySelfLink`" pulumi-lang-python="`kms_key_self_link`" pulumi-lang-yaml="`kmsKeySelfLink`" pulumi-lang-java="`kmsKeySelfLink`">`kms_key_self_link`</span>,
  /// <span pulumi-lang-nodejs="`diskEncryptionKeyRsa`" pulumi-lang-dotnet="`DiskEncryptionKeyRsa`" pulumi-lang-go="`diskEncryptionKeyRsa`" pulumi-lang-python="`disk_encryption_key_rsa`" pulumi-lang-yaml="`diskEncryptionKeyRsa`" pulumi-lang-java="`diskEncryptionKeyRsa`">`disk_encryption_key_rsa`</span> and <span pulumi-lang-nodejs="`diskEncryptionKeyRaw`" pulumi-lang-dotnet="`DiskEncryptionKeyRaw`" pulumi-lang-go="`diskEncryptionKeyRaw`" pulumi-lang-python="`disk_encryption_key_raw`" pulumi-lang-yaml="`diskEncryptionKeyRaw`" pulumi-lang-java="`diskEncryptionKeyRaw`">`disk_encryption_key_raw`</span>
  /// may be set.
  final String? kmsKeySelfLink;

  /// The mode in which to attach this disk, either `READ_WRITE`
  /// or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode.
  final String? mode;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the existing disk (such as those managed by
  /// <span pulumi-lang-nodejs="`gcp.compute.Disk`" pulumi-lang-dotnet="`gcp.compute.Disk`" pulumi-lang-go="`compute.Disk`" pulumi-lang-python="`compute.Disk`" pulumi-lang-yaml="`gcp.compute.Disk`" pulumi-lang-java="`gcp.compute.Disk`">`gcp.compute.Disk`</span>) or disk image. To create an instance from a snapshot, first create a
  /// <span pulumi-lang-nodejs="`gcp.compute.Disk`" pulumi-lang-dotnet="`gcp.compute.Disk`" pulumi-lang-go="`compute.Disk`" pulumi-lang-python="`compute.Disk`" pulumi-lang-yaml="`gcp.compute.Disk`" pulumi-lang-java="`gcp.compute.Disk`">`gcp.compute.Disk`</span> from a snapshot and reference it here.
  final String? source;

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

  factory InstanceBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceBootDisk(
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
          : InstanceBootDiskInitializeParams.fromMap(
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
