// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_managed_disk_parameters.dart';

/// Describes a virtual machine scale set data disk.
class VirtualMachineScaleSetDataDisk {
  /// Specifies the caching requirements. Possible values are: **None,**
  /// **ReadOnly,** **ReadWrite.** The default values are: **None for Standard
  /// storage. ReadOnly for Premium storage.**
  final pulumi.Input<String>? caching;
  /// The create option.
  final pulumi.Input<String> createOption;
  /// Specifies whether data disk should be deleted or detached upon VMSS Flex
  /// deletion (This feature is available for VMSS with Flexible OrchestrationMode
  /// only).<br><br> Possible values: <br><br> **Delete** If this value is used, the
  /// data disk is deleted when the VMSS Flex VM is deleted.<br><br> **Detach** If
  /// this value is used, the data disk is retained after VMSS Flex VM is
  /// deleted.<br><br> The default value is set to **Delete**.
  final pulumi.Input<String>? deleteOption;
  /// Specifies the Read-Write IOPS for the managed disk. Should be used only when
  /// StorageAccountType is UltraSSD_LRS. If not specified, a default value would be
  /// assigned based on diskSizeGB.
  final pulumi.Input<double>? diskIOPSReadWrite;
  /// Specifies the bandwidth in MB per second for the managed disk. Should be used
  /// only when StorageAccountType is UltraSSD_LRS. If not specified, a default value
  /// would be assigned based on diskSizeGB.
  final pulumi.Input<double>? diskMBpsReadWrite;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used
  /// to overwrite the size of the disk in a virtual machine image. The property
  /// diskSizeGB is the number of bytes x 1024^3 for the disk and the value cannot be
  /// larger than 1023.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to
  /// identify data disks within the VM and therefore must be unique for each data
  /// disk attached to a VM.
  final pulumi.Input<int> lun;
  /// The managed disk parameters.
  final pulumi.Input<VirtualMachineScaleSetManagedDiskParameters>? managedDisk;
  /// The disk name.
  final pulumi.Input<String>? name;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [VirtualMachineScaleSetDataDisk].
  /// [caching] Specifies the caching requirements. Possible values are: **None,**
  /// [createOption] The create option.
  /// [deleteOption] Specifies whether data disk should be deleted or detached upon VMSS Flex
  /// [diskIOPSReadWrite] Specifies the Read-Write IOPS for the managed disk. Should be used only when
  /// [diskMBpsReadWrite] Specifies the bandwidth in MB per second for the managed disk. Should be used
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used
  /// [lun] Specifies the logical unit number of the data disk. This value is used to
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  VirtualMachineScaleSetDataDisk({
    this.caching,
    required this.createOption,
    this.deleteOption,
    this.diskIOPSReadWrite,
    this.diskMBpsReadWrite,
    this.diskSizeGB,
    required this.lun,
    this.managedDisk,
    this.name,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'diskIOPSReadWrite': ?diskIOPSReadWrite,
      'diskMBpsReadWrite': ?diskMBpsReadWrite,
      'diskSizeGB': ?diskSizeGB,
      'lun': lun,
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetManagedDiskParameters, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': ?name,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory VirtualMachineScaleSetDataDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetDataDisk(
      caching: map['caching'] == null ? null : (map['caching'] as String).input(),
      createOption: (map['createOption'] as String).input(),
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      diskIOPSReadWrite: map['diskIOPSReadWrite'] == null ? null : (map['diskIOPSReadWrite'] as double).input(),
      diskMBpsReadWrite: map['diskMBpsReadWrite'] == null ? null : (map['diskMBpsReadWrite'] as double).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as int).input(),
      lun: (map['lun'] as int).input(),
      managedDisk: map['managedDisk'] == null ? null : (VirtualMachineScaleSetManagedDiskParameters.fromMap((map['managedDisk'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : (map['writeAcceleratorEnabled'] as bool).input(),
    );
  }
}

