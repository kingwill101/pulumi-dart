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
  ManagedNetworkGroupResponse({
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
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementGroups: map['managementGroups'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['managementGroups'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['subnets'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subscriptions: map['subscriptions'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['subscriptions'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      virtualNetworks: map['virtualNetworks'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['virtualNetworks'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

