// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_data_disk_response.dart';
import 'compute_vm_instance_view_status_response.dart';

/// Properties of a virtual machine returned by the Microsoft.Compute API.
class ComputeVmPropertiesResponse {
  /// Gets data disks blob uri for the virtual machine.
  final pulumi.Input<List<String>>? dataDiskIds;
  /// Gets all data disks attached to the virtual machine.
  final pulumi.Input<List<ComputeDataDiskResponse>>? dataDisks;
  /// Gets the network interface ID of the virtual machine.
  final pulumi.Input<String>? networkInterfaceId;
  /// Gets OS disk blob uri for the virtual machine.
  final pulumi.Input<String>? osDiskId;
  /// Gets the OS type of the virtual machine.
  final pulumi.Input<String>? osType;
  /// Gets the statuses of the virtual machine.
  final pulumi.Input<List<ComputeVmInstanceViewStatusResponse>>? statuses;
  /// Gets the size of the virtual machine.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [ComputeVmPropertiesResponse].
  /// [dataDiskIds] Gets data disks blob uri for the virtual machine.
  /// [dataDisks] Gets all data disks attached to the virtual machine.
  /// [networkInterfaceId] Gets the network interface ID of the virtual machine.
  /// [osDiskId] Gets OS disk blob uri for the virtual machine.
  /// [osType] Gets the OS type of the virtual machine.
  /// [statuses] Gets the statuses of the virtual machine.
  /// [vmSize] Gets the size of the virtual machine.
  const ComputeVmPropertiesResponse({
    this.dataDiskIds,
    this.dataDisks,
    this.networkInterfaceId,
    this.osDiskId,
    this.osType,
    this.statuses,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskIds': ?dataDiskIds,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ComputeDataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ComputeDataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaceId': ?networkInterfaceId,
      'osDiskId': ?osDiskId,
      'osType': ?osType,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ComputeVmInstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ComputeVmInstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': ?vmSize,
    };
  }

  factory ComputeVmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeVmPropertiesResponse(
      dataDiskIds: (() { final guardedValue = map['dataDiskIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeDataDiskResponse>(guardedValue, (value) => ComputeDataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskId: (() { final guardedValue = map['osDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeVmInstanceViewStatusResponse>(guardedValue, (value) => ComputeVmInstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

