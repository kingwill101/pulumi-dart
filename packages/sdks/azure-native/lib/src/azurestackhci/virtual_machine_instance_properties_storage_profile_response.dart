// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_arm_reference_response.dart';
import 'virtual_hard_disk_arm_reference_response.dart';
import 'virtual_machine_instance_properties_storage_profile_os_disk_response.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine instance
class VirtualMachineInstancePropertiesStorageProfileResponse {
  /// adds data disks to the virtual machine instance
  final List<VirtualHardDiskArmReferenceResponse>? dataDisks;
  /// Which Image to use for the virtual machine instance
  final ImageArmReferenceResponse? imageReference;
  /// VHD to attach as OS disk
  final VirtualMachineInstancePropertiesStorageProfileOsDiskResponse? osDisk;
  /// Id of the storage container that hosts the VM configuration file
  final String? vmConfigStoragePathId;

  /// Creates a new [VirtualMachineInstancePropertiesStorageProfileResponse].
  /// [dataDisks] adds data disks to the virtual machine instance
  /// [imageReference] Which Image to use for the virtual machine instance
  /// [osDisk] VHD to attach as OS disk
  /// [vmConfigStoragePathId] Id of the storage container that hosts the VM configuration file
  VirtualMachineInstancePropertiesStorageProfileResponse({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
    this.vmConfigStoragePathId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<VirtualHardDiskArmReferenceResponse, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesStorageProfileResponse(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<VirtualHardDiskArmReferenceResponse>(map['dataDisks'], (value) => VirtualHardDiskArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: map['imageReference'] == null ? null : ImageArmReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : VirtualMachineInstancePropertiesStorageProfileOsDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      vmConfigStoragePathId: map['vmConfigStoragePathId'] == null ? null : map['vmConfigStoragePathId'] as String,
    );
  }
}

