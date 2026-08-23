// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'managed_disk_parameters_response.dart';
import 'virtual_hard_disk_response.dart';

/// Describes a data disk.
class DataDiskResponse {
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  final pulumi.Input<String>? caching;
  /// Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine data disk. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described. **Empty:** This value is used when creating an empty data disk. **Copy:** This value is used to create a data disk from a snapshot or another disk. **Restore:** This value is used to create a data disk from a disk restore point.
  final pulumi.Input<String> createOption;
  /// Specifies whether data disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the data disk is deleted when VM is deleted. **Detach.** If this value is used, the data disk is retained after VM is deleted. The default value is set to **Detach**.
  final pulumi.Input<String>? deleteOption;
  /// Specifies the detach behavior to be used while detaching a disk or which is already in the process of detachment from the virtual machine. Supported values: **ForceDetach.** detachOption: **ForceDetach** is applicable only for managed data disks. If a previous detachment attempt of the data disk did not complete due to an unexpected failure from the virtual machine and the disk is still not released then use force-detach as a last resort option to detach the disk forcibly from the VM. All writes might not have been flushed when using this detach behavior. **This feature is still in preview**. To force-detach a data disk update toBeDetached to 'true' along with setting detachOption: 'ForceDetach'.
  final pulumi.Input<String>? detachOption;
  /// Specifies the Read-Write IOPS for the managed disk when StorageAccountType is UltraSSD_LRS. Returned only for VirtualMachine ScaleSet VM disks. Can be updated only via updates to the VirtualMachine Scale Set.
  final pulumi.Input<double> diskIOPSReadWrite;
  /// Specifies the bandwidth in MB per second for the managed disk when StorageAccountType is UltraSSD_LRS. Returned only for VirtualMachine ScaleSet VM disks. Can be updated only via updates to the VirtualMachine Scale Set.
  final pulumi.Input<double> diskMBpsReadWrite;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final pulumi.Input<int>? diskSizeGB;
  /// The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  final pulumi.Input<VirtualHardDiskResponse>? image;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  final pulumi.Input<int> lun;
  /// The managed disk parameters.
  final pulumi.Input<ManagedDiskParametersResponse>? managedDisk;
  /// The disk name.
  final pulumi.Input<String>? name;
  /// The source resource identifier. It can be a snapshot, or disk restore point from which to create a disk.
  final pulumi.Input<ApiEntityReferenceResponse>? sourceResource;
  /// Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset
  final pulumi.Input<bool>? toBeDetached;
  /// The virtual hard disk.
  final pulumi.Input<VirtualHardDiskResponse>? vhd;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [DataDiskResponse].
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  /// [createOption] Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine data disk. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described. **Empty:** This value is used when creating an empty data disk. **Copy:** This value is used to create a data disk from a snapshot or another disk. **Restore:** This value is used to create a data disk from a disk restore point.
  /// [deleteOption] Specifies whether data disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the data disk is deleted when VM is deleted. **Detach.** If this value is used, the data disk is retained after VM is deleted. The default value is set to **Detach**.
  /// [detachOption] Specifies the detach behavior to be used while detaching a disk or which is already in the process of detachment from the virtual machine. Supported values: **ForceDetach.** detachOption: **ForceDetach** is applicable only for managed data disks. If a previous detachment attempt of the data disk did not complete due to an unexpected failure from the virtual machine and the disk is still not released then use force-detach as a last resort option to detach the disk forcibly from the VM. All writes might not have been flushed when using this detach behavior. **This feature is still in preview**. To force-detach a data disk update toBeDetached to 'true' along with setting detachOption: 'ForceDetach'.
  /// [diskIOPSReadWrite] Specifies the Read-Write IOPS for the managed disk when StorageAccountType is UltraSSD_LRS. Returned only for VirtualMachine ScaleSet VM disks. Can be updated only via updates to the VirtualMachine Scale Set.
  /// [diskMBpsReadWrite] Specifies the bandwidth in MB per second for the managed disk when StorageAccountType is UltraSSD_LRS. Returned only for VirtualMachine ScaleSet VM disks. Can be updated only via updates to the VirtualMachine Scale Set.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [image] The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [sourceResource] The source resource identifier. It can be a snapshot, or disk restore point from which to create a disk.
  /// [toBeDetached] Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset
  /// [vhd] The virtual hard disk.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  const DataDiskResponse({
    this.caching,
    required this.createOption,
    this.deleteOption,
    this.detachOption,
    required this.diskIOPSReadWrite,
    required this.diskMBpsReadWrite,
    this.diskSizeGB,
    this.image,
    required this.lun,
    this.managedDisk,
    this.name,
    this.sourceResource,
    this.toBeDetached,
    this.vhd,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'detachOption': ?detachOption,
      'diskIOPSReadWrite': diskIOPSReadWrite,
      'diskMBpsReadWrite': diskMBpsReadWrite,
      'diskSizeGB': ?diskSizeGB,
      'image': ?pulumi.Input.mapOptionalInputValue<VirtualHardDiskResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'lun': lun,
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskParametersResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': ?name,
      'sourceResource': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(sourceResource, (value) => value.toMap()),
      'toBeDetached': ?toBeDetached,
      'vhd': ?pulumi.Input.mapOptionalInputValue<VirtualHardDiskResponse, Map<String, dynamic>>(vhd, (value) => value.toMap()),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory DataDiskResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskResponse(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detachOption: (() { final guardedValue = map['detachOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIOPSReadWrite: pulumi.Input.fromValue(map['diskIOPSReadWrite'] as double),
      diskMBpsReadWrite: pulumi.Input.fromValue(map['diskMBpsReadWrite'] as double),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResource: (() { final guardedValue = map['sourceResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toBeDetached: (() { final guardedValue = map['toBeDetached']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vhd: (() { final guardedValue = map['vhd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
