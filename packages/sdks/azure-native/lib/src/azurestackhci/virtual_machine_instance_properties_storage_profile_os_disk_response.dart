// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_managed_disk_parameters_response.dart';

/// VHD to attach as OS disk
class VirtualMachineInstancePropertiesStorageProfileOsDiskResponse {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final pulumi.Input<String>? id;
  /// The managed disk parameters.
  final pulumi.Input<VirtualMachineInstanceManagedDiskParametersResponse>? managedDisk;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  final pulumi.Input<String>? osType;

  /// Creates a new [VirtualMachineInstancePropertiesStorageProfileOsDiskResponse].
  /// [id] The Azure Resource ID for a Virtual Hard Disk.
  /// [managedDisk] The managed disk parameters.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  VirtualMachineInstancePropertiesStorageProfileOsDiskResponse({
    this.id,
    this.managedDisk,
    this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstanceManagedDiskParametersResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'osType': ?osType,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfileOsDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesStorageProfileOsDiskResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      managedDisk: map['managedDisk'] == null ? null : (VirtualMachineInstanceManagedDiskParametersResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>())).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
    );
  }
}

