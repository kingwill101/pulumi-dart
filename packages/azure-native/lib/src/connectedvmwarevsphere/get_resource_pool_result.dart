// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getResourcePool.
class GetResourcePoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the max CPU usage across all cores on the pool in MHz.
  final double cpuCapacityMHz;
  /// Gets or sets CPULimitMHz which specifies a CPU usage limit in MHz.
  /// Utilization will not exceed this limit even if there are available resources.
  final double cpuLimitMHz;
  /// Gets the used CPU usage across all cores on the pool in MHz.
  final double cpuOverallUsageMHz;
  /// Gets or sets CPUReservationMHz which specifies the CPU size in MHz that is guaranteed
  /// to be available.
  final double cpuReservationMHz;
  /// Gets or sets CPUSharesLevel which specifies the CPU allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  final String cpuSharesLevel;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Gets the datastore ARM ids.
  final List<String> datastoreIds;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the Id.
  final String id;
  /// Gets or sets the inventory Item ID for the resource pool.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String location;
  /// Gets the total amount of physical memory on the pool in GB.
  final double memCapacityGB;
  /// Gets or sets MemLimitMB specifies a memory usage limit in megabytes.
  /// Utilization will not exceed the specified limit even if there are available resources.
  final double memLimitMB;
  /// Gets the used physical memory on the pool in GB.
  final double memOverallUsageGB;
  /// Gets or sets MemReservationMB which specifies the guaranteed available memory in
  /// megabytes.
  final double memReservationMB;
  /// Gets or sets CPUSharesLevel which specifies the memory allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  final String memSharesLevel;
  /// Gets or sets the vCenter Managed Object name for the resource pool.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  final String? moRefId;
  /// Gets or sets the name.
  final String name;
  /// Gets the network ARM ids.
  final List<String> networkIds;
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
  GetResourcePoolResult({
    required this.azureApiVersion,
    required this.cpuCapacityMHz,
    required this.cpuLimitMHz,
    required this.cpuOverallUsageMHz,
    required this.cpuReservationMHz,
    required this.cpuSharesLevel,
    required this.customResourceName,
    required this.datastoreIds,
    this.extendedLocation,
    required this.id,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.memCapacityGB,
    required this.memLimitMB,
    required this.memOverallUsageGB,
    required this.memReservationMB,
    required this.memSharesLevel,
    required this.moName,
    this.moRefId,
    required this.name,
    required this.networkIds,
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
      'cpuCapacityMHz': cpuCapacityMHz,
      'cpuLimitMHz': cpuLimitMHz,
      'cpuOverallUsageMHz': cpuOverallUsageMHz,
      'cpuReservationMHz': cpuReservationMHz,
      'cpuSharesLevel': cpuSharesLevel,
      'customResourceName': customResourceName,
      'datastoreIds': datastoreIds,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'memCapacityGB': memCapacityGB,
      'memLimitMB': memLimitMB,
      'memOverallUsageGB': memOverallUsageGB,
      'memReservationMB': memReservationMB,
      'memSharesLevel': memSharesLevel,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkIds': networkIds,
      'provisioningState': provisioningState,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetResourcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cpuCapacityMHz: map['cpuCapacityMHz'] as double,
      cpuLimitMHz: map['cpuLimitMHz'] as double,
      cpuOverallUsageMHz: map['cpuOverallUsageMHz'] as double,
      cpuReservationMHz: map['cpuReservationMHz'] as double,
      cpuSharesLevel: map['cpuSharesLevel'] as String,
      customResourceName: map['customResourceName'] as String,
      datastoreIds: (map['datastoreIds'] as List).cast<String>(),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] as String,
      memCapacityGB: map['memCapacityGB'] as double,
      memLimitMB: map['memLimitMB'] as double,
      memOverallUsageGB: map['memOverallUsageGB'] as double,
      memReservationMB: map['memReservationMB'] as double,
      memSharesLevel: map['memSharesLevel'] as String,
      moName: map['moName'] as String,
      moRefId: map['moRefId'] == null ? null : map['moRefId'] as String,
      name: map['name'] as String,
      networkIds: (map['networkIds'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses'], (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId'] as String,
    );
  }
}

