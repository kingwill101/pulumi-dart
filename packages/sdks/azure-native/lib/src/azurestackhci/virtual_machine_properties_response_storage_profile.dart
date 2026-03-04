// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_data_disks.dart';
import 'virtual_machine_properties_response_image_reference.dart';
import 'virtual_machine_properties_response_os_disk.dart';

/// StorageProfile - contains information about the disks and storage information for the virtual machine
class VirtualMachinePropertiesResponseStorageProfile {
  /// adds data disks to the virtual machine
  final pulumi.Input<List<VirtualMachinePropertiesResponseDataDisks>>?
  dataDisks;

  /// Which Image to use for the virtual machine
  final pulumi.Input<VirtualMachinePropertiesResponseImageReference>?
  imageReference;

  /// VHD to attach as OS disk
  final pulumi.Input<VirtualMachinePropertiesResponseOsDisk>? osDisk;

  /// Id of the storage container that hosts the VM configuration file
  final pulumi.Input<String>? vmConfigStoragePathId;

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
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachinePropertiesResponseDataDisks>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachinePropertiesResponseDataDisks,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageReference':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePropertiesResponseImageReference,
            Map<String, dynamic>
          >(imageReference, (value) => value.toMap()),
      'osDisk':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePropertiesResponseOsDisk,
            Map<String, dynamic>
          >(osDisk, (value) => value.toMap()),
      'vmConfigStoragePathId': ?vmConfigStoragePathId,
    };
  }

  factory VirtualMachinePropertiesResponseStorageProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePropertiesResponseStorageProfile(
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualMachinePropertiesResponseDataDisks>(
            guardedValue,
            (value) => VirtualMachinePropertiesResponseDataDisks.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageReference: (() {
        final guardedValue = map['imageReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePropertiesResponseImageReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      osDisk: (() {
        final guardedValue = map['osDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePropertiesResponseOsDisk.fromMap(
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
