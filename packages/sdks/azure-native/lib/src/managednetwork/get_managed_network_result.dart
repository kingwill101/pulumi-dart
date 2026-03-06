// ignore_for_file: unused_element, unnecessary_cast

import 'connectivity_collection_response.dart';
import 'scope_response.dart';

/// Result data returned by getManagedNetwork.
class GetManagedNetworkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The collection of groups and policies concerned with connectivity
  final ConnectivityCollectionResponse connectivity;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the ManagedNetwork resource.
  final String provisioningState;
  /// The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  final ScopeResponse? scope;
  /// Resource tags
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetManagedNetworkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectivity] The collection of groups and policies concerned with connectivity
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the ManagedNetwork resource.
  /// [scope] The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  /// [tags] Resource tags
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetManagedNetworkResult({
    required this.azureApiVersion,
    required this.connectivity,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.scope,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectivity': connectivity.toMap(),
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'scope': ?scope?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectivity: ConnectivityCollectionResponse.fromMap((map['connectivity']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

