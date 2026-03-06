// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference_response.dart';
import 'virtual_machine_scale_set_data_disk_response.dart';
import 'virtual_machine_scale_set_osdisk_response.dart';

/// Describes a virtual machine scale set storage profile.
class VirtualMachineScaleSetStorageProfileResponse {
  /// Specifies the parameters that are used to add data disks to the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<List<VirtualMachineScaleSetDataDiskResponse>>? dataDisks;
  /// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  final pulumi.Input<String>? diskControllerType;
  /// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  final pulumi.Input<ImageReferenceResponse>? imageReference;
  /// Specifies information about the operating system disk used by the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<VirtualMachineScaleSetOSDiskResponse>? osDisk;

  /// Creates a new [VirtualMachineScaleSetStorageProfileResponse].
  /// [dataDisks] Specifies the parameters that are used to add data disks to the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [diskControllerType] Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
  /// [imageReference] Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machines in the scale set. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  const VirtualMachineScaleSetStorageProfileResponse({
    this.dataDisks,
    this.diskControllerType,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetDataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetDataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskControllerType': ?diskControllerType,
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageReferenceResponse, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetOSDiskResponse, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetStorageProfileResponse(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetDataDiskResponse>(guardedValue, (value) => VirtualMachineScaleSetDataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskControllerType: (() { final guardedValue = map['diskControllerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetOSDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

