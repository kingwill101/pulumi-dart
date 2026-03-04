// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// Result data returned by getManagedNetworkGroup.
class GetManagedNetworkGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// Responsibility role under which this Managed Network Group will be created
  final String? kind;

  /// The geo-location where the resource lives
  final String? location;

  /// The collection of management groups covered by the Managed Network
  final List<ResourceIdResponse>? managementGroups;

  /// The name of the resource
  final String name;

  /// Provisioning state of the ManagedNetwork resource.
  final String provisioningState;

  /// The collection of  subnets covered by the Managed Network
  final List<ResourceIdResponse>? subnets;

  /// The collection of subscriptions covered by the Managed Network
  final List<ResourceIdResponse>? subscriptions;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// The collection of virtual nets covered by the Managed Network
  final List<ResourceIdResponse>? virtualNetworks;

  /// Creates a new [GetManagedNetworkGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetManagedNetworkGroupResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'managementGroups': ?(() {
        final guardedValue = managementGroups;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ResourceIdResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'name': name,
      'provisioningState': provisioningState,
      'subnets': ?(() {
        final guardedValue = subnets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ResourceIdResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'subscriptions': ?(() {
        final guardedValue = subscriptions;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ResourceIdResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'type': type,
      'virtualNetworks': ?(() {
        final guardedValue = virtualNetworks;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ResourceIdResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetManagedNetworkGroupResult.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      managementGroups: (() {
        final guardedValue = map['managementGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ResourceIdResponse>(
          guardedValue,
          (value) => ResourceIdResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ResourceIdResponse>(
          guardedValue,
          (value) => ResourceIdResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subscriptions: (() {
        final guardedValue = map['subscriptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ResourceIdResponse>(
          guardedValue,
          (value) => ResourceIdResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: map['type'] as String,
      virtualNetworks: (() {
        final guardedValue = map['virtualNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ResourceIdResponse>(
          guardedValue,
          (value) => ResourceIdResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
