// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_data_disks.dart';
import 'virtual_machine_properties_image_reference.dart';
import 'virtual_machine_properties_os_disk.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine
class VirtualMachinePropertiesStorageProfile {
  /// adds data disks to the virtual machine
  final pulumi.Input<List<VirtualMachinePropertiesDataDisks>>? dataDisks;
  /// Which Image to use for the virtual machine
  final pulumi.Input<VirtualMachinePropertiesImageReference>? imageReference;
  /// VHD to attach as OS disk
  final pulumi.Input<VirtualMachinePropertiesOsDisk>? osDisk;
  /// Id of the storage container that hosts the VM configuration file
  final pulumi.Input<String>? vmConfigStoragePathId;

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
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePropertiesDataDisks>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<VirtualMachinePropertiesDataDisks, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachinePropertiesStorageProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesStorageProfile(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachinePropertiesDataDisks>(guardedValue, (value) => VirtualMachinePropertiesDataDisks.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePropertiesImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePropertiesOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmConfigStoragePathId: (() { final guardedValue = map['vmConfigStoragePathId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

