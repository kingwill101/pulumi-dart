// ignore_for_file: unused_element, unnecessary_cast

import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSchemaRegistry.
class GetSchemaRegistryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Human-readable description of the schema registry.
  final String? description;
  /// Human-readable display name.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final SystemAssignedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  final String? namespace;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The Storage Account's Container URL where schemas will be stored.
  final String? storageAccountContainerUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Globally unique, immutable, non-reusable id.
  final String? uuid;

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
  const GetSchemaRegistryResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.namespace,
    this.provisioningState,
    this.storageAccountContainerUrl,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'namespace': ?namespace,
      'provisioningState': ?provisioningState,
      'storageAccountContainerUrl': ?storageAccountContainerUrl,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetSchemaRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountContainerUrl: (() { final guardedValue = map['storageAccountContainerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
