// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_data_disks.dart';
import 'virtual_machine_properties_image_reference.dart';
import 'virtual_machine_properties_os_disk.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine
class VirtualMachinePropertiesStorageProfile {
  /// adds data disks to the virtual machine
  final List<VirtualMachinePropertiesDataDisks>? dataDisks;
  /// Which Image to use for the virtual machine
  final VirtualMachinePropertiesImageReference? imageReference;
  /// VHD to attach as OS disk
  final VirtualMachinePropertiesOsDisk? osDisk;
  /// Id of the storage container that hosts the VM configuration file
  final String? vmConfigStoragePathId;

  /// Creates a new [VirtualMachinePropertiesStorageProfile].
  /// [dataDisks] adds data disks to the virtual machine
  /// [imageReference] Which Image to use for the virtual machine
  /// [osDisk] VHD to attach as OS disk
  /// [vmConfigStoragePathId] Id of the storage container that hosts the VM configuration file
  VirtualMachinePropertiesStorageProfile({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
    this.vmConfigStoragePathId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesDataDisks, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachinePropertiesStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesDataDisks>(map['dataDisks'], (value) => VirtualMachinePropertiesDataDisks.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: map['imageReference'] == null ? null : VirtualMachinePropertiesImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : VirtualMachinePropertiesOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      vmConfigStoragePathId: map['vmConfigStoragePathId'] == null ? null : map['vmConfigStoragePathId'] as String,
    );
  }
}

