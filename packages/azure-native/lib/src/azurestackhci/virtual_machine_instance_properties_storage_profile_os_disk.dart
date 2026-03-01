// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_instance_managed_disk_parameters.dart';

/// VHD to attach as OS disk
class VirtualMachineInstancePropertiesStorageProfileOsDisk {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final String? id;
  /// The managed disk parameters.
  final VirtualMachineInstanceManagedDiskParameters? managedDisk;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  final String? osType;

  /// Creates a new [VirtualMachineInstancePropertiesStorageProfileOsDisk].
  /// [id] The Azure Resource ID for a Virtual Hard Disk.
  /// [managedDisk] The managed disk parameters.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  VirtualMachineInstancePropertiesStorageProfileOsDisk({
    this.id,
    this.managedDisk,
    this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'osType': ?osType,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfileOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesStorageProfileOsDisk(
      id: map['id'] == null ? null : map['id'] as String,
      managedDisk: map['managedDisk'] == null ? null : VirtualMachineInstanceManagedDiskParameters.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
    );
  }
}

