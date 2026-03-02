// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the Id.
  final String id;
  /// Gets or sets the inventory Item ID for the virtual network.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String location;
  /// Gets or sets the vCenter Managed Object name for the virtual network.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual network.
  final String? moRefId;
  /// Gets or sets the name.
  final String name;
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
  /// Gets or sets the ARM Id of the vCenter resource in which this template resides.
  final String? vCenterId;

  /// Creates a new [GetVirtualNetworkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [extendedLocation] Gets or sets the extended location.
  /// [id] Gets or sets the Id.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual network.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [moName] Gets or sets the vCenter Managed Object name for the virtual network.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual network.
  /// [name] Gets or sets the name.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this template resides.
  GetVirtualNetworkResult({
    required this.azureApiVersion,
    required this.customResourceName,
    this.extendedLocation,
    required this.id,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.moName,
    this.moRefId,
    required this.name,
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
      'customResourceName': customResourceName,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'provisioningState': provisioningState,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customResourceName: map['customResourceName'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId']! as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      moName: map['moName'] as String,
      moRefId: map['moRefId'] == null ? null : map['moRefId']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses'], (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId']! as String,
    );
  }
}

