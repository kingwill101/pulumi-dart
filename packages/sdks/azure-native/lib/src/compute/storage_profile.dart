// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk.dart';
import 'image_reference.dart';
import 'osdisk.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfile {
  /// Specifies whether the regional disks should be aligned/moved to the VM zone. This is applicable only for VMs with placement property set. Please note that this change is irreversible. Minimum api-version: 2024-11-01.
  final pulumi.Input<bool>? alignRegionalDisksToVMZone;
  /// Specifies the parameters that are used to add a data disk to a virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<List<DataDisk>>? dataDisks;
  /// Specifies the disk controller type configured for the VM. **Note:** This property will be set to the default disk controller type if not specified provided virtual machine is being created with 'hyperVGeneration' set to V2 based on the capabilities of the operating system disk and VM size from the the specified minimum api version. You need to deallocate the VM before updating its disk controller type unless you are updating the VM size in the VM configuration which implicitly deallocates and reallocates the VM. Minimum api-version: 2022-08-01.
  final pulumi.Input<String>? diskControllerType;
  /// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  final pulumi.Input<ImageReference>? imageReference;
  /// Specifies information about the operating system disk used by the virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<OSDisk>? osDisk;

  /// Creates a new [StorageProfile].
  /// [alignRegionalDisksToVMZone] Specifies whether the regional disks should be aligned/moved to the VM zone. This is applicable only for VMs with placement property set. Please note that this change is irreversible. Minimum api-version: 2024-11-01.
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [diskControllerType] Specifies the disk controller type configured for the VM. **Note:** This property will be set to the default disk controller type if not specified provided virtual machine is being created with 'hyperVGeneration' set to V2 based on the capabilities of the operating system disk and VM size from the the specified minimum api version. You need to deallocate the VM before updating its disk controller type unless you are updating the VM size in the VM configuration which implicitly deallocates and reallocates the VM. Minimum api-version: 2022-08-01.
  /// [imageReference] Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  StorageProfile({
    this.alignRegionalDisksToVMZone,
    this.dataDisks,
    this.diskControllerType,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alignRegionalDisksToVMZone': ?alignRegionalDisksToVMZone,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskControllerType': ?diskControllerType,
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<OSDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      alignRegionalDisksToVMZone: map['alignRegionalDisksToVMZone'] == null ? null : (map['alignRegionalDisksToVMZone']! as bool).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<DataDisk>(map['dataDisks']!, (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskControllerType: map['diskControllerType'] == null ? null : (map['diskControllerType']! as String).input(),
      imageReference: map['imageReference'] == null ? null : (ImageReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())).input(),
      osDisk: map['osDisk'] == null ? null : (OSDisk.fromMap((map['osDisk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

