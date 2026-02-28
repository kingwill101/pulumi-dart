// ignore_for_file: unused_element, unnecessary_cast

import 'boot_disk_defaults_disk_type_vmmigration_v1alpha1.dart';
import 'disk_image_defaults_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsVmmigrationV1alpha1 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String? deviceName;

  /// Optional. The name of the disk.
  final String? diskName;

  /// Optional. The type of disk provisioning to use for the VM.
  final BootDiskDefaultsDiskTypeVmmigrationV1alpha1? diskType;

  /// Optional. The encryption to apply to the boot disk.
  final EncryptionVmmigrationV1alpha1? encryption;

  /// The image to use when creating the disk.
  final DiskImageDefaultsVmmigrationV1alpha1? image;

  /// Creates a new [BootDiskDefaultsVmmigrationV1alpha1].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskName] Optional. The name of the disk.
  /// [diskType] Optional. The type of disk provisioning to use for the VM.
  /// [encryption] Optional. The encryption to apply to the boot disk.
  /// [image] The image to use when creating the disk.
  BootDiskDefaultsVmmigrationV1alpha1({
    this.deviceName,
    this.diskName,
    this.diskType,
    this.encryption,
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final diskNameValue = diskName;
    if (diskNameValue != null) {
      map['diskName'] = diskNameValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue.value;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = encryptionValue.toMap();
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    return map;
  }

  factory BootDiskDefaultsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BootDiskDefaultsVmmigrationV1alpha1(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskType: map['diskType'] == null
          ? null
          : BootDiskDefaultsDiskTypeVmmigrationV1alpha1.fromValue(
              map['diskType'] as String),
      encryption: map['encryption'] == null
          ? null
          : EncryptionVmmigrationV1alpha1.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>()),
      image: map['image'] == null
          ? null
          : DiskImageDefaultsVmmigrationV1alpha1.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
