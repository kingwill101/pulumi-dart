// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_data_disks.dart';
import 'virtual_machine_properties_response_image_reference.dart';
import 'virtual_machine_properties_response_os_disk.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine
class VirtualMachinePropertiesResponseStorageProfile {
  /// adds data disks to the virtual machine
  final List<VirtualMachinePropertiesResponseDataDisks>? dataDisks;
  /// Which Image to use for the virtual machine
  final VirtualMachinePropertiesResponseImageReference? imageReference;
  /// VHD to attach as OS disk
  final VirtualMachinePropertiesResponseOsDisk? osDisk;
  /// Id of the storage container that hosts the VM configuration file
  final String? vmConfigStoragePathId;

  /// Creates a new [VirtualMachinePropertiesResponseStorageProfile].
  /// [dataDisks] adds data disks to the virtual machine
  /// [imageReference] Which Image to use for the virtual machine
  /// [osDisk] VHD to attach as OS disk
  /// [vmConfigStoragePathId] Id of the storage container that hosts the VM configuration file
  VirtualMachinePropertiesResponseStorageProfile({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
    this.vmConfigStoragePathId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesResponseDataDisks, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachinePropertiesResponseStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesResponseDataDisks>(map['dataDisks'], (value) => VirtualMachinePropertiesResponseDataDisks.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: map['imageReference'] == null ? null : VirtualMachinePropertiesResponseImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : VirtualMachinePropertiesResponseOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      vmConfigStoragePathId: map['vmConfigStoragePathId'] == null ? null : map['vmConfigStoragePathId'] as String,
    );
  }
}

