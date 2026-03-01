// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_data_disk_response.dart';
import 'compute_vm_instance_view_status_response.dart';

/// Properties of a virtual machine returned by the Microsoft.Compute API.
class ComputeVmPropertiesResponse {
  /// Gets data disks blob uri for the virtual machine.
  final List<String>? dataDiskIds;
  /// Gets all data disks attached to the virtual machine.
  final List<ComputeDataDiskResponse>? dataDisks;
  /// Gets the network interface ID of the virtual machine.
  final String? networkInterfaceId;
  /// Gets OS disk blob uri for the virtual machine.
  final String? osDiskId;
  /// Gets the OS type of the virtual machine.
  final String? osType;
  /// Gets the statuses of the virtual machine.
  final List<ComputeVmInstanceViewStatusResponse>? statuses;
  /// Gets the size of the virtual machine.
  final String? vmSize;

  /// Creates a new [ComputeVmPropertiesResponse].
  /// [dataDiskIds] Gets data disks blob uri for the virtual machine.
  /// [dataDisks] Gets all data disks attached to the virtual machine.
  /// [networkInterfaceId] Gets the network interface ID of the virtual machine.
  /// [osDiskId] Gets OS disk blob uri for the virtual machine.
  /// [osType] Gets the OS type of the virtual machine.
  /// [statuses] Gets the statuses of the virtual machine.
  /// [vmSize] Gets the size of the virtual machine.
  ComputeVmPropertiesResponse({
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
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<ComputeDataDiskResponse, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'networkInterfaceId': ?networkInterfaceId,
      'osDiskId': ?osDiskId,
      'osType': ?osType,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<ComputeVmInstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'vmSize': ?vmSize,
    };
  }

  factory ComputeVmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeVmPropertiesResponse(
      dataDiskIds: map['dataDiskIds'] == null ? null : (map['dataDiskIds'] as List).cast<String>(),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<ComputeDataDiskResponse>(map['dataDisks'], (value) => ComputeDataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      osDiskId: map['osDiskId'] == null ? null : map['osDiskId'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<ComputeVmInstanceViewStatusResponse>(map['statuses'], (value) => ComputeVmInstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

