// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference.dart';
import 'virtual_machine_scale_set_data_disk.dart';
import 'virtual_machine_scale_set_osdisk.dart';

/// Describes a virtual machine scale set storage profile.
class VirtualMachineScaleSetStorageProfile {
  /// Specifies the parameters that are used to add data disks to the virtual
  /// machines in the scale set. For more information about disks, see [About disks
  /// and VHDs for Azure virtual
  /// machines](https://learn.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<List<VirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  final pulumi.Input<String>? diskControllerType;
  /// Specifies information about the image to use. You can specify information about
  /// platform images, marketplace images, or virtual machine images. This element is
  /// required when you want to use a platform image, marketplace image, or virtual
  /// machine image, but is not used in other creation operations.
  final pulumi.Input<ImageReference>? imageReference;
  /// Specifies information about the operating system disk used by the virtual
  /// machines in the scale set. For more information about disks, see [About disks
  /// and VHDs for Azure virtual
  /// machines](https://learn.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<VirtualMachineScaleSetOSDisk>? osDisk;

  /// Creates a new [VirtualMachineScaleSetStorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add data disks to the virtual
  /// [diskControllerType] Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  /// [imageReference] Specifies information about the image to use. You can specify information about
  /// [osDisk] Specifies information about the operating system disk used by the virtual
  const VirtualMachineScaleSetStorageProfile({
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
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetDataDisk>(guardedValue, (value) => VirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskControllerType: (() { final guardedValue = map['diskControllerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetOSDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

