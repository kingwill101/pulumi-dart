// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHost.
class GetHostResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the max CPU usage across all cores in MHz.
  final double? cpuMhz;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String? customResourceName;
  /// Gets the datastore ARM ids.
  final List<String>? datastoreIds;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the Id.
  final String? id;
  /// Gets or sets the inventory Item ID for the host.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String? location;
  /// Gets the total amount of physical memory on the host in GB.
  final double? memorySizeGB;
  /// Gets or sets the vCenter Managed Object name for the host.
  final String? moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the host.
  final String? moRefId;
  /// Gets or sets the name.
  final String? name;
  /// Gets the network ARM ids.
  final List<String>? networkIds;
  /// Gets the used CPU usage across all cores in MHz.
  final double? overallCpuUsageMHz;
  /// Gets the used physical memory on the host in GB.
  final double? overallMemoryUsageGB;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// The resource status information.
  final List<ResourceStatusResponse>? statuses;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String? type;
  /// Gets or sets a unique identifier for this resource.
  final String? uuid;
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
  const GetHostResult({
    this.azureApiVersion,
    this.cpuMhz,
    this.customResourceName,
    this.datastoreIds,
    this.extendedLocation,
    this.id,
    this.inventoryItemId,
    this.kind,
    this.location,
    this.memorySizeGB,
    this.moName,
    this.moRefId,
    this.name,
    this.networkIds,
    this.overallCpuUsageMHz,
    this.overallMemoryUsageGB,
    this.provisioningState,
    this.statuses,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cpuMhz': ?cpuMhz,
      'customResourceName': ?customResourceName,
      'datastoreIds': ?datastoreIds,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': ?location,
      'memorySizeGB': ?memorySizeGB,
      'moName': ?moName,
      'moRefId': ?moRefId,
      'name': ?name,
      'networkIds': ?networkIds,
      'overallCpuUsageMHz': ?overallCpuUsageMHz,
      'overallMemoryUsageGB': ?overallMemoryUsageGB,
      'provisioningState': ?provisioningState,
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetHostResult.fromMap(Map<String, dynamic> map) {
    return GetHostResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuMhz: (() { final guardedValue = map['cpuMhz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      customResourceName: (() { final guardedValue = map['customResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datastoreIds: (() { final guardedValue = map['datastoreIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySizeGB: (() { final guardedValue = map['memorySizeGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      moName: (() { final guardedValue = map['moName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkIds: (() { final guardedValue = map['networkIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      overallCpuUsageMHz: (() { final guardedValue = map['overallCpuUsageMHz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      overallMemoryUsageGB: (() { final guardedValue = map['overallMemoryUsageGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceStatusResponse>(guardedValue, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
