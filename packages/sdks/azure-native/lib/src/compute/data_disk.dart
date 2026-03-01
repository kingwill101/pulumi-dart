// ignore_for_file: unused_element, unnecessary_cast

import 'api_entity_reference.dart';
import 'caching_types.dart';
import 'managed_disk_parameters.dart';
import 'virtual_hard_disk.dart';

/// Describes a data disk.
class DataDisk {
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  final CachingTypes? caching;
  /// Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine data disk. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described. **Empty:** This value is used when creating an empty data disk. **Copy:** This value is used to create a data disk from a snapshot or another disk. **Restore:** This value is used to create a data disk from a disk restore point.
  final String createOption;
  /// Specifies whether data disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the data disk is deleted when VM is deleted. **Detach.** If this value is used, the data disk is retained after VM is deleted. The default value is set to **Detach**.
  final String? deleteOption;
  /// Specifies the detach behavior to be used while detaching a disk or which is already in the process of detachment from the virtual machine. Supported values: **ForceDetach.** detachOption: **ForceDetach** is applicable only for managed data disks. If a previous detachment attempt of the data disk did not complete due to an unexpected failure from the virtual machine and the disk is still not released then use force-detach as a last resort option to detach the disk forcibly from the VM. All writes might not have been flushed when using this detach behavior. **This feature is still in preview**. To force-detach a data disk update toBeDetached to 'true' along with setting detachOption: 'ForceDetach'.
  final String? detachOption;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final int? diskSizeGB;
  /// The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  final VirtualHardDisk? image;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  final int lun;
  /// The managed disk parameters.
  final ManagedDiskParameters? managedDisk;
  /// The disk name.
  final String? name;
  /// The source resource identifier. It can be a snapshot, or disk restore point from which to create a disk.
  final ApiEntityReference? sourceResource;
  /// Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset
  final bool? toBeDetached;
  /// The virtual hard disk.
  final VirtualHardDisk? vhd;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [DataDisk].
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  /// [createOption] Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine data disk. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described. **Empty:** This value is used when creating an empty data disk. **Copy:** This value is used to create a data disk from a snapshot or another disk. **Restore:** This value is used to create a data disk from a disk restore point.
  /// [deleteOption] Specifies whether data disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the data disk is deleted when VM is deleted. **Detach.** If this value is used, the data disk is retained after VM is deleted. The default value is set to **Detach**.
  /// [detachOption] Specifies the detach behavior to be used while detaching a disk or which is already in the process of detachment from the virtual machine. Supported values: **ForceDetach.** detachOption: **ForceDetach** is applicable only for managed data disks. If a previous detachment attempt of the data disk did not complete due to an unexpected failure from the virtual machine and the disk is still not released then use force-detach as a last resort option to detach the disk forcibly from the VM. All writes might not have been flushed when using this detach behavior. **This feature is still in preview**. To force-detach a data disk update toBeDetached to 'true' along with setting detachOption: 'ForceDetach'.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [image] The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [sourceResource] The source resource identifier. It can be a snapshot, or disk restore point from which to create a disk.
  /// [toBeDetached] Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset
  /// [vhd] The virtual hard disk.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  DataDisk({
    this.caching,
    required this.createOption,
    this.deleteOption,
    this.detachOption,
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
      'caching': ?caching == null ? null : caching!.value,
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'detachOption': ?detachOption,
      'diskSizeGB': ?diskSizeGB,
      'image': ?image == null ? null : image!.toMap(),
      'lun': lun,
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'name': ?name,
      'sourceResource': ?sourceResource == null ? null : sourceResource!.toMap(),
      'toBeDetached': ?toBeDetached,
      'vhd': ?vhd == null ? null : vhd!.toMap(),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory DataDisk.fromMap(Map<String, dynamic> map) {
    return DataDisk(
      caching: map['caching'] == null ? null : CachingTypes.fromValue(map['caching'] as String),
      createOption: map['createOption'] as String,
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      detachOption: map['detachOption'] == null ? null : map['detachOption'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      image: map['image'] == null ? null : VirtualHardDisk.fromMap((map['image'] as Map).cast<String, dynamic>()),
      lun: map['lun'] as int,
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParameters.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      sourceResource: map['sourceResource'] == null ? null : ApiEntityReference.fromMap((map['sourceResource'] as Map).cast<String, dynamic>()),
      toBeDetached: map['toBeDetached'] == null ? null : map['toBeDetached'] as bool,
      vhd: map['vhd'] == null ? null : VirtualHardDisk.fromMap((map['vhd'] as Map).cast<String, dynamic>()),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

