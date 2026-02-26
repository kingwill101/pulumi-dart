// ignore_for_file: unused_element, unnecessary_cast

import 'boot_disk_defaults_disk_type2.dart';
import 'disk_image_defaults2.dart';
import 'encryption3.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaults2 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String? deviceName;

  /// Optional. The name of the disk.
  final String? diskName;

  /// Optional. The type of disk provisioning to use for the VM.
  final BootDiskDefaultsDiskType2? diskType;

  /// Optional. The encryption to apply to the boot disk.
  final Encryption3? encryption;

  /// The image to use when creating the disk.
  final DiskImageDefaults2? image;

  BootDiskDefaults2({
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

  factory BootDiskDefaults2.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaults2(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskType: map['diskType'] == null
          ? null
          : BootDiskDefaultsDiskType2.fromValue(map['diskType'] as String),
      encryption: map['encryption'] == null
          ? null
          : Encryption3.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>()),
      image: map['image'] == null
          ? null
          : DiskImageDefaults2.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
