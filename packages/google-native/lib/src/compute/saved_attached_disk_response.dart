// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response.dart';
import 'guest_os_feature_response.dart';

/// DEPRECATED: Please use compute#savedDisk instead. An instance-attached disk resource.
class SavedAttachedDiskResponse {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool autoDelete;

  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final bool boot;

  /// Specifies the name of the disk attached to the source instance.
  final String deviceName;

  /// The encryption key for the disk.
  final CustomerEncryptionKeyResponse diskEncryptionKey;

  /// The size of the disk in base-2 GB.
  final String diskSizeGb;

  /// URL of the disk type resource. For example: projects/project /zones/zone/diskTypes/pd-standard or pd-ssd
  final String diskType;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final List<GuestOsFeatureResponse> guestOsFeatures;

  /// Specifies zero-based index of the disk that is attached to the source instance.
  final int index;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME.
  final String interface;

  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final String kind;

  /// Any valid publicly visible licenses.
  final List<String> licenses;

  /// The mode in which this disk is attached to the source instance, either READ_WRITE or READ_ONLY.
  final String mode;

  /// Specifies a URL of the disk attached to the source instance.
  final String source;

  /// A size of the storage used by the disk's snapshot by this machine image.
  final String storageBytes;

  /// An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  final String storageBytesStatus;

  /// Specifies the type of the attached disk, either SCRATCH or PERSISTENT.
  final String type;

  /// Creates a new [SavedAttachedDiskResponse].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Specifies the name of the disk attached to the source instance.
  /// [diskEncryptionKey] The encryption key for the disk.
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [diskType] URL of the disk type resource. For example: projects/project /zones/zone/diskTypes/pd-standard or pd-ssd
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [index] Specifies zero-based index of the disk that is attached to the source instance.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME.
  /// [kind] Type of the resource. Always compute#attachedDisk for attached disks.
  /// [licenses] Any valid publicly visible licenses.
  /// [mode] The mode in which this disk is attached to the source instance, either READ_WRITE or READ_ONLY.
  /// [source] Specifies a URL of the disk attached to the source instance.
  /// [storageBytes] A size of the storage used by the disk's snapshot by this machine image.
  /// [storageBytesStatus] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  /// [type] Specifies the type of the attached disk, either SCRATCH or PERSISTENT.
  SavedAttachedDiskResponse({
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskEncryptionKey,
    required this.diskSizeGb,
    required this.diskType,
    required this.guestOsFeatures,
    required this.index,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.source,
    required this.storageBytes,
    required this.storageBytesStatus,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDelete'] = autoDelete;
    map['boot'] = boot;
    map['deviceName'] = deviceName;
    map['diskEncryptionKey'] = diskEncryptionKey.toMap();
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['guestOsFeatures'] =
        pulumi.Input.encodeList<GuestOsFeatureResponse, Map<String, dynamic>>(
            guestOsFeatures, (value) => value.toMap());
    map['index'] = index;
    map['interface'] = interface;
    map['kind'] = kind;
    map['licenses'] = licenses;
    map['mode'] = mode;
    map['source'] = source;
    map['storageBytes'] = storageBytes;
    map['storageBytesStatus'] = storageBytesStatus;
    map['type'] = type;
    return map;
  }

  factory SavedAttachedDiskResponse.fromMap(Map<String, dynamic> map) {
    return SavedAttachedDiskResponse(
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      diskEncryptionKey: CustomerEncryptionKeyResponse.fromMap(
          (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      guestOsFeatures: pulumi.Input.decodeList<GuestOsFeatureResponse>(
          map['guestOsFeatures'],
          (value) => GuestOsFeatureResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      index: map['index'] as int,
      interface: map['interface'] as String,
      kind: map['kind'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      mode: map['mode'] as String,
      source: map['source'] as String,
      storageBytes: map['storageBytes'] as String,
      storageBytesStatus: map['storageBytesStatus'] as String,
      type: map['type'] as String,
    );
  }
}
