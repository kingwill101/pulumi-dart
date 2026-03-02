// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference.dart';
import 'virtual_machine_scale_set_data_disk.dart';
import 'virtual_machine_scale_set_osdisk.dart';

/// Describes a virtual machine scale set storage profile.
class VirtualMachineScaleSetStorageProfile {
  /// Specifies the parameters that are used to add data disks to the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<List<VirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  final pulumi.Input<String>? diskControllerType;
  /// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  final pulumi.Input<ImageReference>? imageReference;
  /// Specifies information about the operating system disk used by the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<VirtualMachineScaleSetOSDisk>? osDisk;

  /// Creates a new [VirtualMachineScaleSetStorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add data disks to the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [diskControllerType] Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  /// [imageReference] Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  VirtualMachineScaleSetStorageProfile({
    this.dataDisks,
    this.diskControllerType,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskControllerType': ?diskControllerType,
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetOSDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<VirtualMachineScaleSetDataDisk>(map['dataDisks']!, (value) => VirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskControllerType: map['diskControllerType'] == null ? null : (map['diskControllerType']! as String).input(),
      imageReference: map['imageReference'] == null ? null : (ImageReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())).input(),
      osDisk: map['osDisk'] == null ? null : (VirtualMachineScaleSetOSDisk.fromMap((map['osDisk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

