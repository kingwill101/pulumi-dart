// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_interface_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';
import 'virtual_disk_response.dart';

/// Result data returned by getVirtualMachineTemplate.
class GetVirtualMachineTemplateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String? customResourceName;
  /// Gets or sets the disks the template.
  final List<VirtualDiskResponse>? disks;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Firmware type
  final String? firmwareType;
  /// Gets or sets the folder path of the template.
  final String? folderPath;
  /// Gets or sets the Id.
  final String? id;
  /// Gets or sets the inventory Item ID for the virtual machine template.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String? location;
  /// Gets or sets memory size in MBs for the template.
  final int? memorySizeMB;
  /// Gets or sets the vCenter Managed Object name for the virtual machine template.
  final String? moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine
  /// template.
  final String? moRefId;
  /// Gets or sets the name.
  final String? name;
  /// Gets or sets the network interfaces of the template.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// Gets or sets the number of vCPUs for the template.
  final int? numCPUs;
  /// Gets or sets the number of cores per socket for the template.
  /// Defaults to 1 if unspecified.
  final int? numCoresPerSocket;
  /// Gets or sets os name.
  final String? osName;
  /// Gets or sets the type of the os.
  final String? osType;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// The resource status information.
  final List<ResourceStatusResponse>? statuses;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the current version of VMware Tools.
  final String? toolsVersion;
  /// Gets or sets the current version status of VMware Tools installed in the guest operating system.
  final String? toolsVersionStatus;
  /// Gets or sets the type of the resource.
  final String? type;
  /// Gets or sets a unique identifier for this resource.
  final String? uuid;
  /// Gets or sets the ARM Id of the vCenter resource in which this template resides.
  final String? vCenterId;

  /// Creates a new [GetVirtualMachineTemplateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [disks] Gets or sets the disks the template.
  /// [extendedLocation] Gets or sets the extended location.
  /// [firmwareType] Firmware type
  /// [folderPath] Gets or sets the folder path of the template.
  /// [id] Gets or sets the Id.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine template.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [memorySizeMB] Gets or sets memory size in MBs for the template.
  /// [moName] Gets or sets the vCenter Managed Object name for the virtual machine template.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine
  /// [name] Gets or sets the name.
  /// [networkInterfaces] Gets or sets the network interfaces of the template.
  /// [numCPUs] Gets or sets the number of vCPUs for the template.
  /// [numCoresPerSocket] Gets or sets the number of cores per socket for the template.
  /// [osName] Gets or sets os name.
  /// [osType] Gets or sets the type of the os.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [toolsVersion] Gets or sets the current version of VMware Tools.
  /// [toolsVersionStatus] Gets or sets the current version status of VMware Tools installed in the guest operating system.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this template resides.
  const GetVirtualMachineTemplateResult({
    this.azureApiVersion,
    this.customResourceName,
    this.disks,
    this.extendedLocation,
    this.firmwareType,
    this.folderPath,
    this.id,
    this.inventoryItemId,
    this.kind,
    this.location,
    this.memorySizeMB,
    this.moName,
    this.moRefId,
    this.name,
    this.networkInterfaces,
    this.numCPUs,
    this.numCoresPerSocket,
    this.osName,
    this.osType,
    this.provisioningState,
    this.statuses,
    this.systemData,
    this.tags,
    this.toolsVersion,
    this.toolsVersionStatus,
    this.type,
    this.uuid,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customResourceName': ?customResourceName,
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'firmwareType': ?firmwareType,
      'folderPath': ?folderPath,
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': ?location,
      'memorySizeMB': ?memorySizeMB,
      'moName': ?moName,
      'moRefId': ?moRefId,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'numCPUs': ?numCPUs,
      'numCoresPerSocket': ?numCoresPerSocket,
      'osName': ?osName,
      'osType': ?osType,
      'provisioningState': ?provisioningState,
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'toolsVersion': ?toolsVersion,
      'toolsVersionStatus': ?toolsVersionStatus,
      'type': ?type,
      'uuid': ?uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetVirtualMachineTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customResourceName: (() { final guardedValue = map['customResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualDiskResponse>(guardedValue, (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      firmwareType: (() { final guardedValue = map['firmwareType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySizeMB: (() { final guardedValue = map['memorySizeMB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      moName: (() { final guardedValue = map['moName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceResponse>(guardedValue, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      numCPUs: (() { final guardedValue = map['numCPUs']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      numCoresPerSocket: (() { final guardedValue = map['numCoresPerSocket']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceStatusResponse>(guardedValue, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      toolsVersion: (() { final guardedValue = map['toolsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toolsVersionStatus: (() { final guardedValue = map['toolsVersionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
