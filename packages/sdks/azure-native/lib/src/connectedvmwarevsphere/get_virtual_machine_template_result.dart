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
  final String azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Gets or sets the disks the template.
  final List<VirtualDiskResponse> disks;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Firmware type
  final String firmwareType;
  /// Gets or sets the folder path of the template.
  final String folderPath;
  /// Gets or sets the Id.
  final String id;
  /// Gets or sets the inventory Item ID for the virtual machine template.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String location;
  /// Gets or sets memory size in MBs for the template.
  final int memorySizeMB;
  /// Gets or sets the vCenter Managed Object name for the virtual machine template.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine
  /// template.
  final String? moRefId;
  /// Gets or sets the name.
  final String name;
  /// Gets or sets the network interfaces of the template.
  final List<NetworkInterfaceResponse> networkInterfaces;
  /// Gets or sets the number of vCPUs for the template.
  final int numCPUs;
  /// Gets or sets the number of cores per socket for the template.
  /// Defaults to 1 if unspecified.
  final int numCoresPerSocket;
  /// Gets or sets os name.
  final String osName;
  /// Gets or sets the type of the os.
  final String osType;
  /// Gets the provisioning state.
  final String provisioningState;
  /// The resource status information.
  final List<ResourceStatusResponse> statuses;
  /// The system data.
  final SystemDataResponse systemData;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the current version of VMware Tools.
  final String toolsVersion;
  /// Gets or sets the current version status of VMware Tools installed in the guest operating system.
  final String toolsVersionStatus;
  /// Gets or sets the type of the resource.
  final String type;
  /// Gets or sets a unique identifier for this resource.
  final String uuid;
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
    required this.azureApiVersion,
    required this.customResourceName,
    required this.disks,
    this.extendedLocation,
    required this.firmwareType,
    required this.folderPath,
    required this.id,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.memorySizeMB,
    required this.moName,
    this.moRefId,
    required this.name,
    required this.networkInterfaces,
    required this.numCPUs,
    required this.numCoresPerSocket,
    required this.osName,
    required this.osType,
    required this.provisioningState,
    required this.statuses,
    required this.systemData,
    this.tags,
    required this.toolsVersion,
    required this.toolsVersionStatus,
    required this.type,
    required this.uuid,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customResourceName': customResourceName,
      'disks': pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'extendedLocation': ?extendedLocation?.toMap(),
      'firmwareType': firmwareType,
      'folderPath': folderPath,
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'memorySizeMB': memorySizeMB,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'numCPUs': numCPUs,
      'numCoresPerSocket': numCoresPerSocket,
      'osName': osName,
      'osType': osType,
      'provisioningState': provisioningState,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'toolsVersion': toolsVersion,
      'toolsVersionStatus': toolsVersionStatus,
      'type': type,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetVirtualMachineTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customResourceName: map['customResourceName'] as String,
      disks: pulumi.Input.decodeList<VirtualDiskResponse>(map['disks']!, (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      firmwareType: map['firmwareType'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      memorySizeMB: map['memorySizeMB'] as int,
      moName: map['moName'] as String,
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      numCPUs: map['numCPUs'] as int,
      numCoresPerSocket: map['numCoresPerSocket'] as int,
      osName: map['osName'] as String,
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses']!, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      toolsVersion: map['toolsVersion'] as String,
      toolsVersionStatus: map['toolsVersionStatus'] as String,
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

