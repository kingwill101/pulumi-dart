// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;

  /// Gets the datastore ARM ids.
  final List<String> datastoreIds;

  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;

  /// Gets or sets the Id.
  final String id;

  /// Gets or sets the inventory Item ID for the cluster.
  final String? inventoryItemId;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;

  /// Gets or sets the location.
  final String location;

  /// Gets or sets the vCenter Managed Object name for the cluster.
  final String moName;

  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the cluster.
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

  /// Gets the max CPU usage across all cores on the cluster in MHz.
  final double totalCpuMHz;

  /// Gets the total amount of physical memory on the cluster in GB.
  final double totalMemoryGB;

  /// Gets or sets the type of the resource.
  final String type;

  /// Gets the used CPU usage across all cores on the cluster in MHz.
  final double usedCpuMHz;

  /// Gets the used physical memory on the cluster in GB.
  final double usedMemoryGB;

  /// Gets or sets a unique identifier for this resource.
  final String uuid;

  /// Gets or sets the ARM Id of the vCenter resource in which this cluster resides.
  final String? vCenterId;

  /// Creates a new [GetClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [datastoreIds] Gets the datastore ARM ids.
  /// [extendedLocation] Gets or sets the extended location.
  /// [id] Gets or sets the Id.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the cluster.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [moName] Gets or sets the vCenter Managed Object name for the cluster.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the cluster.
  /// [name] Gets or sets the name.
  /// [networkIds] Gets the network ARM ids.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [totalCpuMHz] Gets the max CPU usage across all cores on the cluster in MHz.
  /// [totalMemoryGB] Gets the total amount of physical memory on the cluster in GB.
  /// [type] Gets or sets the type of the resource.
  /// [usedCpuMHz] Gets the used CPU usage across all cores on the cluster in MHz.
  /// [usedMemoryGB] Gets the used physical memory on the cluster in GB.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this cluster resides.
  GetClusterResult({
    required this.azureApiVersion,
    required this.customResourceName,
    required this.datastoreIds,
    this.extendedLocation,
    required this.id,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.moName,
    this.moRefId,
    required this.name,
    required this.networkIds,
    required this.provisioningState,
    required this.statuses,
    required this.systemData,
    this.tags,
    required this.totalCpuMHz,
    required this.totalMemoryGB,
    required this.type,
    required this.usedCpuMHz,
    required this.usedMemoryGB,
    required this.uuid,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customResourceName': customResourceName,
      'datastoreIds': datastoreIds,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkIds': networkIds,
      'provisioningState': provisioningState,
      'statuses':
          pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(
            statuses,
            (value) => value.toMap(),
          ),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalCpuMHz': totalCpuMHz,
      'totalMemoryGB': totalMemoryGB,
      'type': type,
      'usedCpuMHz': usedCpuMHz,
      'usedMemoryGB': usedMemoryGB,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customResourceName: map['customResourceName'] as String,
      datastoreIds: (map['datastoreIds'] as List).cast<String>(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      inventoryItemId: (() {
        final guardedValue = map['inventoryItemId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      moName: map['moName'] as String,
      moRefId: (() {
        final guardedValue = map['moRefId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      networkIds: (map['networkIds'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(
        map['statuses']!,
        (value) => ResourceStatusResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      totalCpuMHz: map['totalCpuMHz'] as double,
      totalMemoryGB: map['totalMemoryGB'] as double,
      type: map['type'] as String,
      usedCpuMHz: map['usedCpuMHz'] as double,
      usedMemoryGB: map['usedMemoryGB'] as double,
      uuid: map['uuid'] as String,
      vCenterId: (() {
        final guardedValue = map['vCenterId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
