// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// The Managed Network Group resource
class ManagedNetworkGroupResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// Responsibility role under which this Managed Network Group will be created
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The collection of management groups covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? managementGroups;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Provisioning state of the ManagedNetwork resource.
  final pulumi.Input<String> provisioningState;
  /// The collection of  subnets covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? subnets;
  /// The collection of subscriptions covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? subscriptions;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final pulumi.Input<String> type;
  /// The collection of virtual nets covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? virtualNetworks;

  /// Creates a new [ManagedNetworkGroupResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Responsibility role under which this Managed Network Group will be created
  /// [location] The geo-location where the resource lives
  /// [managementGroups] The collection of management groups covered by the Managed Network
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the ManagedNetwork resource.
  /// [subnets] The collection of  subnets covered by the Managed Network
  /// [subscriptions] The collection of subscriptions covered by the Managed Network
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [virtualNetworks] The collection of virtual nets covered by the Managed Network
  const ManagedNetworkGroupResponse({
    required this.etag,
    required this.id,
    this.kind,
    this.location,
    this.managementGroups,
    required this.name,
    required this.provisioningState,
    this.subnets,
    this.subscriptions,
    required this.type,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'managementGroups': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(managementGroups, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'provisioningState': provisioningState,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedNetworkGroupResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkGroupResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceIdResponse>(guardedValue, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceIdResponse>(guardedValue, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceIdResponse>(guardedValue, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceIdResponse>(guardedValue, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
