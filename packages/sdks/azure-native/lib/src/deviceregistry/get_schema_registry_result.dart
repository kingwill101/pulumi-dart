// ignore_for_file: unused_element, unnecessary_cast

import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSchemaRegistry.
class GetSchemaRegistryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Human-readable description of the schema registry.
  final String? description;
  /// Human-readable display name.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final SystemAssignedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  final String namespace;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The Storage Account's Container URL where schemas will be stored.
  final String storageAccountContainerUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Globally unique, immutable, non-reusable id.
  final String uuid;

  /// Creates a new [GetSchemaRegistryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Human-readable description of the schema registry.
  /// [displayName] Human-readable display name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [namespace] Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  /// [provisioningState] Provisioning state of the resource.
  /// [storageAccountContainerUrl] The Storage Account's Container URL where schemas will be stored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable id.
  GetSchemaRegistryResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.namespace,
    required this.provisioningState,
    required this.storageAccountContainerUrl,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'namespace': namespace,
      'provisioningState': provisioningState,
      'storageAccountContainerUrl': storageAccountContainerUrl,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
    };
  }

  factory GetSchemaRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : SystemAssignedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      provisioningState: map['provisioningState'] as String,
      storageAccountContainerUrl: map['storageAccountContainerUrl'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

