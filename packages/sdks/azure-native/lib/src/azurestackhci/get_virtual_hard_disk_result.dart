// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_hard_disk_status_response.dart';

/// Result data returned by getVirtualHardDisk.
class GetVirtualHardDiskResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Block size in bytes
  final int? blockSizeBytes;
  /// Storage ContainerID of the storage container to be used for VHD
  final String? containerId;
  /// Boolean indicating whether it is an existing local hard disk or if one should be created.
  final bool? createFromLocal;
  /// The format of the actual VHD file [vhd, vhdx]
  final String? diskFileFormat;
  /// Size of the disk in GB
  final double? diskSizeGB;
  /// URL for downloading or accessing the virtual hard disk. This URL points to a secure link from where the VHD can be downloaded or accessed directly.
  final String? downloadUrl;
  /// Boolean for enabling dynamic sizing on the virtual hard disk
  final bool? dynamic_;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Logical sector in bytes
  final int? logicalSectorBytes;
  /// The name of the resource
  final String name;
  /// Physical sector in bytes
  final int? physicalSectorBytes;
  /// Provisioning state of the virtual hard disk.
  final String provisioningState;
  /// The observed state of virtual hard disks
  final VirtualHardDiskStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetVirtualHardDiskResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blockSizeBytes] Block size in bytes
  /// [containerId] Storage ContainerID of the storage container to be used for VHD
  /// [createFromLocal] Boolean indicating whether it is an existing local hard disk or if one should be created.
  /// [diskFileFormat] The format of the actual VHD file [vhd, vhdx]
  /// [diskSizeGB] Size of the disk in GB
  /// [downloadUrl] URL for downloading or accessing the virtual hard disk. This URL points to a secure link from where the VHD can be downloaded or accessed directly.
  /// [dynamic_] Boolean for enabling dynamic sizing on the virtual hard disk
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [logicalSectorBytes] Logical sector in bytes
  /// [name] The name of the resource
  /// [physicalSectorBytes] Physical sector in bytes
  /// [provisioningState] Provisioning state of the virtual hard disk.
  /// [status] The observed state of virtual hard disks
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetVirtualHardDiskResult({
    required this.azureApiVersion,
    this.blockSizeBytes,
    this.containerId,
    this.createFromLocal,
    this.diskFileFormat,
    this.diskSizeGB,
    this.downloadUrl,
    this.dynamic_,
    this.extendedLocation,
    this.hyperVGeneration,
    required this.id,
    required this.location,
    this.logicalSectorBytes,
    required this.name,
    this.physicalSectorBytes,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blockSizeBytes': ?blockSizeBytes,
      'containerId': ?containerId,
      'createFromLocal': ?createFromLocal,
      'diskFileFormat': ?diskFileFormat,
      'diskSizeGB': ?diskSizeGB,
      'downloadUrl': ?downloadUrl,
      'dynamic': ?dynamic_,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'location': location,
      'logicalSectorBytes': ?logicalSectorBytes,
      'name': name,
      'physicalSectorBytes': ?physicalSectorBytes,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetVirtualHardDiskResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHardDiskResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blockSizeBytes: (() { final guardedValue = map['blockSizeBytes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createFromLocal: (() { final guardedValue = map['createFromLocal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      diskFileFormat: (() { final guardedValue = map['diskFileFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return guardedValue as double; })(),
      downloadUrl: (() { final guardedValue = map['downloadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamic_: (() { final guardedValue = map['dynamic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      logicalSectorBytes: (() { final guardedValue = map['logicalSectorBytes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      physicalSectorBytes: (() { final guardedValue = map['physicalSectorBytes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      status: VirtualHardDiskStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

