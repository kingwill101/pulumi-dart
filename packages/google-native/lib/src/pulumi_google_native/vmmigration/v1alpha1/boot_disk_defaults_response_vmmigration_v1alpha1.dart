// ignore_for_file: unused_element, unnecessary_cast

import 'disk_image_defaults_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsResponseVmmigrationV1alpha1 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String deviceName;

  /// Optional. The name of the disk.
  final String diskName;

  /// Optional. The type of disk provisioning to use for the VM.
  final String diskType;

  /// Optional. The encryption to apply to the boot disk.
  final EncryptionResponseVmmigrationV1alpha1 encryption;

  /// The image to use when creating the disk.
  final DiskImageDefaultsResponseVmmigrationV1alpha1 image;

  BootDiskDefaultsResponseVmmigrationV1alpha1({
    required this.deviceName,
    required this.diskName,
    required this.diskType,
    required this.encryption,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['diskName'] = diskName;
    map['diskType'] = diskType;
    map['encryption'] = encryption.toMap();
    map['image'] = image.toMap();
    return map;
  }

  factory BootDiskDefaultsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BootDiskDefaultsResponseVmmigrationV1alpha1(
      deviceName: map['deviceName'] as String,
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      encryption: EncryptionResponseVmmigrationV1alpha1.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      image: DiskImageDefaultsResponseVmmigrationV1alpha1.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
