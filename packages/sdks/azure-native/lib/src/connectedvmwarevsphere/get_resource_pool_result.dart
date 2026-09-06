// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getResourcePool.
class GetResourcePoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the max CPU usage across all cores on the pool in MHz.
  final double? cpuCapacityMHz;
  /// Gets or sets CPULimitMHz which specifies a CPU usage limit in MHz.
  /// Utilization will not exceed this limit even if there are available resources.
  final double? cpuLimitMHz;
  /// Gets the used CPU usage across all cores on the pool in MHz.
  final double? cpuOverallUsageMHz;
  /// Gets or sets CPUReservationMHz which specifies the CPU size in MHz that is guaranteed
  /// to be available.
  final double? cpuReservationMHz;
  /// Gets or sets CPUSharesLevel which specifies the CPU allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  final String? cpuSharesLevel;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String? customResourceName;
  /// Gets the datastore ARM ids.
  final List<String>? datastoreIds;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the Id.
  final String? id;
  /// Gets or sets the inventory Item ID for the resource pool.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String? location;
  /// Gets the total amount of physical memory on the pool in GB.
  final double? memCapacityGB;
  /// Gets or sets MemLimitMB specifies a memory usage limit in megabytes.
  /// Utilization will not exceed the specified limit even if there are available resources.
  final double? memLimitMB;
  /// Gets the used physical memory on the pool in GB.
  final double? memOverallUsageGB;
  /// Gets or sets MemReservationMB which specifies the guaranteed available memory in
  /// megabytes.
  final double? memReservationMB;
  /// Gets or sets CPUSharesLevel which specifies the memory allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  final String? memSharesLevel;
  /// Gets or sets the vCenter Managed Object name for the resource pool.
  final String? moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  final String? moRefId;
  /// Gets or sets the name.
  final String? name;
  /// Gets the network ARM ids.
  final List<String>? networkIds;
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
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final String? vCenterId;

  /// Creates a new [GetResourcePoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cpuCapacityMHz] Gets the max CPU usage across all cores on the pool in MHz.
  /// [cpuLimitMHz] Gets or sets CPULimitMHz which specifies a CPU usage limit in MHz.
  /// [cpuOverallUsageMHz] Gets the used CPU usage across all cores on the pool in MHz.
  /// [cpuReservationMHz] Gets or sets CPUReservationMHz which specifies the CPU size in MHz that is guaranteed
  /// [cpuSharesLevel] Gets or sets CPUSharesLevel which specifies the CPU allocation level for this pool.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [datastoreIds] Gets the datastore ARM ids.
  /// [extendedLocation] Gets or sets the extended location.
  /// [id] Gets or sets the Id.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource pool.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [memCapacityGB] Gets the total amount of physical memory on the pool in GB.
  /// [memLimitMB] Gets or sets MemLimitMB specifies a memory usage limit in megabytes.
  /// [memOverallUsageGB] Gets the used physical memory on the pool in GB.
  /// [memReservationMB] Gets or sets MemReservationMB which specifies the guaranteed available memory in
  /// [memSharesLevel] Gets or sets CPUSharesLevel which specifies the memory allocation level for this pool.
  /// [moName] Gets or sets the vCenter Managed Object name for the resource pool.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  /// [name] Gets or sets the name.
  /// [networkIds] Gets the network ARM ids.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  const GetResourcePoolResult({
    this.azureApiVersion,
    this.cpuCapacityMHz,
    this.cpuLimitMHz,
    this.cpuOverallUsageMHz,
    this.cpuReservationMHz,
    this.cpuSharesLevel,
    this.customResourceName,
    this.datastoreIds,
    this.extendedLocation,
    this.id,
    this.inventoryItemId,
    this.kind,
    this.location,
    this.memCapacityGB,
    this.memLimitMB,
    this.memOverallUsageGB,
    this.memReservationMB,
    this.memSharesLevel,
    this.moName,
    this.moRefId,
    this.name,
    this.networkIds,
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
      'cpuCapacityMHz': ?cpuCapacityMHz,
      'cpuLimitMHz': ?cpuLimitMHz,
      'cpuOverallUsageMHz': ?cpuOverallUsageMHz,
      'cpuReservationMHz': ?cpuReservationMHz,
      'cpuSharesLevel': ?cpuSharesLevel,
      'customResourceName': ?customResourceName,
      'datastoreIds': ?datastoreIds,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': ?location,
      'memCapacityGB': ?memCapacityGB,
      'memLimitMB': ?memLimitMB,
      'memOverallUsageGB': ?memOverallUsageGB,
      'memReservationMB': ?memReservationMB,
      'memSharesLevel': ?memSharesLevel,
      'moName': ?moName,
      'moRefId': ?moRefId,
      'name': ?name,
      'networkIds': ?networkIds,
      'provisioningState': ?provisioningState,
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetResourcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCapacityMHz: (() { final guardedValue = map['cpuCapacityMHz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuLimitMHz: (() { final guardedValue = map['cpuLimitMHz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuOverallUsageMHz: (() { final guardedValue = map['cpuOverallUsageMHz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuReservationMHz: (() { final guardedValue = map['cpuReservationMHz']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuSharesLevel: (() { final guardedValue = map['cpuSharesLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customResourceName: (() { final guardedValue = map['customResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datastoreIds: (() { final guardedValue = map['datastoreIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memCapacityGB: (() { final guardedValue = map['memCapacityGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      memLimitMB: (() { final guardedValue = map['memLimitMB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      memOverallUsageGB: (() { final guardedValue = map['memOverallUsageGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      memReservationMB: (() { final guardedValue = map['memReservationMB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      memSharesLevel: (() { final guardedValue = map['memSharesLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moName: (() { final guardedValue = map['moName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkIds: (() { final guardedValue = map['networkIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
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
