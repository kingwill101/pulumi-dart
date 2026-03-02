// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_arm_reference.dart';
import 'virtual_hard_disk_arm_reference.dart';
import 'virtual_machine_instance_properties_storage_profile_os_disk.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine instance
class VirtualMachineInstancePropertiesStorageProfile {
  /// adds data disks to the virtual machine instance
  final pulumi.Input<List<VirtualHardDiskArmReference>>? dataDisks;
  /// Which Image to use for the virtual machine instance
  final pulumi.Input<ImageArmReference>? imageReference;
  /// VHD to attach as OS disk
  final pulumi.Input<VirtualMachineInstancePropertiesStorageProfileOsDisk>? osDisk;
  /// Id of the storage container that hosts the VM configuration file
  final pulumi.Input<String>? vmConfigStoragePathId;

  /// Creates a new [VirtualMachineInstancePropertiesStorageProfile].
  /// [dataDisks] adds data disks to the virtual machine instance
  /// [imageReference] Which Image to use for the virtual machine instance
  /// [osDisk] VHD to attach as OS disk
  /// [vmConfigStoragePathId] Id of the storage container that hosts the VM configuration file
  VirtualMachineInstancePropertiesStorageProfile({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
    this.vmConfigStoragePathId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualHardDiskArmReference>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<VirtualHardDiskArmReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageArmReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesStorageProfileOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachineInstancePropertiesStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<VirtualHardDiskArmReference>(map['dataDisks']!, (value) => VirtualHardDiskArmReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageReference: map['imageReference'] == null ? null : (ImageArmReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())).input(),
      osDisk: map['osDisk'] == null ? null : (VirtualMachineInstancePropertiesStorageProfileOsDisk.fromMap((map['osDisk']! as Map).cast<String, dynamic>())).input(),
      vmConfigStoragePathId: map['vmConfigStoragePathId'] == null ? null : (map['vmConfigStoragePathId']! as String).input(),
    );
  }
}

