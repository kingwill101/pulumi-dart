// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBuilder.
class GetBuilderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of mappings of container registries and the managed identity used to connect to it.
  final List<ContainerRegistryResponse>? containerRegistries;
  /// Resource ID of the container apps environment that the builder is associated with.
  final String environmentId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state of a builder resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBuilderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerRegistries] List of mappings of container registries and the managed identity used to connect to it.
  /// [environmentId] Resource ID of the container apps environment that the builder is associated with.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of a builder resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBuilderResult({
    required this.azureApiVersion,
    this.containerRegistries,
    required this.environmentId,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'containerRegistries': ?(() { final guardedValue = containerRegistries; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerRegistryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'environmentId': environmentId,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBuilderResult.fromMap(Map<String, dynamic> map) {
    return GetBuilderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerRegistries: (() { final guardedValue = map['containerRegistries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerRegistryResponse>(guardedValue, (value) => ContainerRegistryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

