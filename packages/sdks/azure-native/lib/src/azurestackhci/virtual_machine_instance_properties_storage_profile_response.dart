// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_arm_reference_response.dart';
import 'virtual_hard_disk_arm_reference_response.dart';
import 'virtual_machine_instance_properties_storage_profile_os_disk_response.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine instance
class VirtualMachineInstancePropertiesStorageProfileResponse {
  /// adds data disks to the virtual machine instance
  final pulumi.Input<List<VirtualHardDiskArmReferenceResponse>>? dataDisks;

  /// Which Image to use for the virtual machine instance
  final pulumi.Input<ImageArmReferenceResponse>? imageReference;

  /// VHD to attach as OS disk
  final pulumi.Input<
    VirtualMachineInstancePropertiesStorageProfileOsDiskResponse
  >?
  osDisk;

  /// Id of the storage container that hosts the VM configuration file
  final pulumi.Input<String>? vmConfigStoragePathId;

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
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualHardDiskArmReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualHardDiskArmReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageReference':
          ?pulumi.Input.mapOptionalInputValue<
            ImageArmReferenceResponse,
            Map<String, dynamic>
          >(imageReference, (value) => value.toMap()),
      'osDisk':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineInstancePropertiesStorageProfileOsDiskResponse,
            Map<String, dynamic>
          >(osDisk, (value) => value.toMap()),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineInstancePropertiesStorageProfileResponse(
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualHardDiskArmReferenceResponse>(
            guardedValue,
            (value) => VirtualHardDiskArmReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageReference: (() {
        final guardedValue = map['imageReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageArmReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      osDisk: (() {
        final guardedValue = map['osDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineInstancePropertiesStorageProfileOsDiskResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vmConfigStoragePathId: (() {
        final guardedValue = map['vmConfigStoragePathId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
