// ignore_for_file: unused_element, unnecessary_cast

import 'diff_disk_settings_response.dart';
import 'virtual_hard_disk_response.dart';
import 'virtual_machine_scale_set_managed_disk_parameters_response.dart';

/// Describes a virtual machine scale set operating system disk.
class VirtualMachineScaleSetOSDiskResponse {
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final String? caching;
  /// Specifies how the virtual machines in the scale set should be created. The only allowed value is: **FromImage.** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described.
  final String createOption;
  /// Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion (This feature is available for VMSS with Flexible OrchestrationMode only). <br><br> Possible values: <br><br> **Delete** If this value is used, the OS disk is deleted when VMSS Flex VM is deleted.<br><br> **Detach** If this value is used, the OS disk is retained after VMSS Flex VM is deleted. <br><br> The default value is set to **Delete**. For an Ephemeral OS Disk, the default value is set to **Delete**. User cannot change the delete option for Ephemeral OS Disk.
  final String? deleteOption;
  /// Specifies the ephemeral disk Settings for the operating system disk used by the virtual machine scale set.
  final DiffDiskSettingsResponse? diffDiskSettings;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final int? diskSizeGB;
  /// Specifies information about the unmanaged user image to base the scale set on.
  final VirtualHardDiskResponse? image;
  /// The managed disk parameters.
  final VirtualMachineScaleSetManagedDiskParametersResponse? managedDisk;
  /// The disk name.
  final String? name;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  final String? osType;
  /// Specifies the container urls that are used to store operating system disks for the scale set.
  final List<String>? vhdContainers;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [VirtualMachineScaleSetOSDiskResponse].
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [createOption] Specifies how the virtual machines in the scale set should be created. The only allowed value is: **FromImage.** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described.
  /// [deleteOption] Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion (This feature is available for VMSS with Flexible OrchestrationMode only). <br><br> Possible values: <br><br> **Delete** If this value is used, the OS disk is deleted when VMSS Flex VM is deleted.<br><br> **Detach** If this value is used, the OS disk is retained after VMSS Flex VM is deleted. <br><br> The default value is set to **Delete**. For an Ephemeral OS Disk, the default value is set to **Delete**. User cannot change the delete option for Ephemeral OS Disk.
  /// [diffDiskSettings] Specifies the ephemeral disk Settings for the operating system disk used by the virtual machine scale set.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [image] Specifies information about the unmanaged user image to base the scale set on.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  /// [vhdContainers] Specifies the container urls that are used to store operating system disks for the scale set.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  VirtualMachineScaleSetOSDiskResponse({
    this.caching,
    required this.createOption,
    this.deleteOption,
    this.diffDiskSettings,
    this.diskSizeGB,
    this.image,
    this.managedDisk,
    this.name,
    this.osType,
    this.vhdContainers,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'diffDiskSettings': ?diffDiskSettings == null ? null : diffDiskSettings!.toMap(),
      'diskSizeGB': ?diskSizeGB,
      'image': ?image == null ? null : image!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'name': ?name,
      'osType': ?osType,
      'vhdContainers': ?vhdContainers,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory VirtualMachineScaleSetOSDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetOSDiskResponse(
      caching: map['caching'] == null ? null : map['caching'] as String,
      createOption: map['createOption'] as String,
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      diffDiskSettings: map['diffDiskSettings'] == null ? null : DiffDiskSettingsResponse.fromMap((map['diffDiskSettings'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      image: map['image'] == null ? null : VirtualHardDiskResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : VirtualMachineScaleSetManagedDiskParametersResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      vhdContainers: map['vhdContainers'] == null ? null : (map['vhdContainers'] as List).cast<String>(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

