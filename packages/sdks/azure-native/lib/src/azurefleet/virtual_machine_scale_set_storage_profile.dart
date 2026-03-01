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
  final List<VirtualMachineScaleSetDataDisk>? dataDisks;
  /// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  final String? diskControllerType;
  /// Specifies information about the image to use. You can specify information about
  /// platform images, marketplace images, or virtual machine images. This element is
  /// required when you want to use a platform image, marketplace image, or virtual
  /// machine image, but is not used in other creation operations.
  final ImageReference? imageReference;
  /// Specifies information about the operating system disk used by the virtual
  /// machines in the scale set. For more information about disks, see [About disks
  /// and VHDs for Azure virtual
  /// machines](https://learn.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final VirtualMachineScaleSetOSDisk? osDisk;

  /// Creates a new [VirtualMachineScaleSetStorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add data disks to the virtual
  /// [diskControllerType] Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  /// [imageReference] Specifies information about the image to use. You can specify information about
  /// [osDisk] Specifies information about the operating system disk used by the virtual
  VirtualMachineScaleSetStorageProfile({
    this.dataDisks,
    this.diskControllerType,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<VirtualMachineScaleSetDataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'diskControllerType': ?diskControllerType,
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
    };
  }

  factory VirtualMachineScaleSetStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<VirtualMachineScaleSetDataDisk>(map['dataDisks'], (value) => VirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      diskControllerType: map['diskControllerType'] == null ? null : map['diskControllerType'] as String,
      imageReference: map['imageReference'] == null ? null : ImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : VirtualMachineScaleSetOSDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

