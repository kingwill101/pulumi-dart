// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'caching_types.dart';
import 'diff_disk_settings.dart';
import 'operating_system_types.dart';
import 'virtual_hard_disk.dart';
import 'virtual_machine_scale_set_managed_disk_parameters.dart';

/// Describes a virtual machine scale set operating system disk.
class VirtualMachineScaleSetOSDisk {
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final pulumi.Input<CachingTypes>? caching;
  /// Specifies how the virtual machines in the scale set should be created. The only allowed value is: **FromImage.** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described.
  final pulumi.Input<String> createOption;
  /// Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion (This feature is available for VMSS with Flexible OrchestrationMode only). &lt;br&gt;&lt;br&gt; Possible values: &lt;br&gt;&lt;br&gt; **Delete** If this value is used, the OS disk is deleted when VMSS Flex VM is deleted.&lt;br&gt;&lt;br&gt; **Detach** If this value is used, the OS disk is retained after VMSS Flex VM is deleted. &lt;br&gt;&lt;br&gt; The default value is set to **Delete**. For an Ephemeral OS Disk, the default value is set to **Delete**. User cannot change the delete option for Ephemeral OS Disk.
  final pulumi.Input<String>? deleteOption;
  /// Specifies the ephemeral disk Settings for the operating system disk used by the virtual machine scale set.
  final pulumi.Input<DiffDiskSettings>? diffDiskSettings;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies information about the unmanaged user image to base the scale set on.
  final pulumi.Input<VirtualHardDisk>? image;
  /// The managed disk parameters.
  final pulumi.Input<VirtualMachineScaleSetManagedDiskParameters>? managedDisk;
  /// The disk name.
  final pulumi.Input<String>? name;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  final pulumi.Input<OperatingSystemTypes>? osType;
  /// Specifies the container urls that are used to store operating system disks for the scale set.
  final pulumi.Input<List<String>>? vhdContainers;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [VirtualMachineScaleSetOSDisk].
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [createOption] Specifies how the virtual machines in the scale set should be created. The only allowed value is: **FromImage.** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described.
  /// [deleteOption] Specifies whether OS Disk should be deleted or detached upon VMSS Flex deletion (This feature is available for VMSS with Flexible OrchestrationMode only). &lt;br&gt;&lt;br&gt; Possible values: &lt;br&gt;&lt;br&gt; **Delete** If this value is used, the OS disk is deleted when VMSS Flex VM is deleted.&lt;br&gt;&lt;br&gt; **Detach** If this value is used, the OS disk is retained after VMSS Flex VM is deleted. &lt;br&gt;&lt;br&gt; The default value is set to **Delete**. For an Ephemeral OS Disk, the default value is set to **Delete**. User cannot change the delete option for Ephemeral OS Disk.
  /// [diffDiskSettings] Specifies the ephemeral disk Settings for the operating system disk used by the virtual machine scale set.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [image] Specifies information about the unmanaged user image to base the scale set on.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  /// [vhdContainers] Specifies the container urls that are used to store operating system disks for the scale set.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  VirtualMachineScaleSetOSDisk({
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
      'caching': ?pulumi.Input.mapOptionalInputValue<CachingTypes, String>(caching, (value) => value.wireValue),
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'diffDiskSettings': ?pulumi.Input.mapOptionalInputValue<DiffDiskSettings, Map<String, dynamic>>(diffDiskSettings, (value) => value.toMap()),
      'diskSizeGB': ?diskSizeGB,
      'image': ?pulumi.Input.mapOptionalInputValue<VirtualHardDisk, Map<String, dynamic>>(image, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetManagedDiskParameters, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': ?name,
      'osType': ?pulumi.Input.mapOptionalInputValue<OperatingSystemTypes, String>(osType, (value) => value.wireValue),
      'vhdContainers': ?vhdContainers,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory VirtualMachineScaleSetOSDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetOSDisk(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CachingTypes.fromValue(guardedValue as String)); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diffDiskSettings: (() { final guardedValue = map['diffDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiffDiskSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetManagedDiskParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperatingSystemTypes.fromValue(guardedValue as String)); })(),
      vhdContainers: (() { final guardedValue = map['vhdContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

