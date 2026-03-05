// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHost.
class GetHostResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the max CPU usage across all cores in MHz.
  final double cpuMhz;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Gets the datastore ARM ids.
  final List<String> datastoreIds;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the Id.
  final String id;
  /// Gets or sets the inventory Item ID for the host.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String location;
  /// Gets the total amount of physical memory on the host in GB.
  final double memorySizeGB;
  /// Gets or sets the vCenter Managed Object name for the host.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the host.
  final String? moRefId;
  /// Gets or sets the name.
  final String name;
  /// Gets the network ARM ids.
  final List<String> networkIds;
  /// Gets the used CPU usage across all cores in MHz.
  final double overallCpuUsageMHz;
  /// Gets the used physical memory on the host in GB.
  final double overallMemoryUsageGB;
  /// Gets the provisioning state.
  final String provisioningState;
  /// The resource status information.
  final List<ResourceStatusResponse> statuses;
  /// The system data.
  final SystemDataResponse systemData;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String type;
  /// Gets or sets a unique identifier for this resource.
  final String uuid;
  /// Gets or sets the ARM Id of the vCenter resource in which this host resides.
  final String? vCenterId;

  /// Creates a new [GetHostResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cpuMhz] Gets the max CPU usage across all cores in MHz.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [datastoreIds] Gets the datastore ARM ids.
  /// [extendedLocation] Gets or sets the extended location.
  /// [id] Gets or sets the Id.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the host.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [memorySizeGB] Gets the total amount of physical memory on the host in GB.
  /// [moName] Gets or sets the vCenter Managed Object name for the host.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the host.
  /// [name] Gets or sets the name.
  /// [networkIds] Gets the network ARM ids.
  /// [overallCpuUsageMHz] Gets the used CPU usage across all cores in MHz.
  /// [overallMemoryUsageGB] Gets the used physical memory on the host in GB.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this host resides.
  GetHostResult({
    required this.azureApiVersion,
    required this.cpuMhz,
    required this.customResourceName,
    required this.datastoreIds,
    this.extendedLocation,
    required this.id,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.memorySizeGB,
    required this.moName,
    this.moRefId,
    required this.name,
    required this.networkIds,
    required this.overallCpuUsageMHz,
    required this.overallMemoryUsageGB,
    required this.provisioningState,
    required this.statuses,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cpuMhz': cpuMhz,
      'customResourceName': customResourceName,
      'datastoreIds': datastoreIds,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'memorySizeGB': memorySizeGB,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkIds': networkIds,
      'overallCpuUsageMHz': overallCpuUsageMHz,
      'overallMemoryUsageGB': overallMemoryUsageGB,
      'provisioningState': provisioningState,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetHostResult.fromMap(Map<String, dynamic> map) {
    return GetHostResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cpuMhz: map['cpuMhz'] as double,
      customResourceName: map['customResourceName'] as String,
      datastoreIds: (map['datastoreIds'] as List).cast<String>(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      memorySizeGB: map['memorySizeGB'] as double,
      moName: map['moName'] as String,
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkIds: (map['networkIds'] as List).cast<String>(),
      overallCpuUsageMHz: map['overallCpuUsageMHz'] as double,
      overallMemoryUsageGB: map['overallMemoryUsageGB'] as double,
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses']!, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

