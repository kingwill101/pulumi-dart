// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_managed_disk_parameters.dart';

/// VHD to attach as OS disk
class VirtualMachineInstancePropertiesStorageProfileOsDisk {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final pulumi.Input<String>? id;
  /// The managed disk parameters.
  final pulumi.Input<VirtualMachineInstanceManagedDiskParameters>? managedDisk;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  final pulumi.Input<String>? osType;

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
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstanceManagedDiskParameters, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'osType': ?osType,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfileOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesStorageProfileOsDisk(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineInstanceManagedDiskParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

