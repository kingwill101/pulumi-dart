// ignore_for_file: unused_element, unnecessary_cast

import 'access_connector_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccessConnector.
class GetAccessConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Azure Databricks Access Connector properties
  final AccessConnectorPropertiesResponse properties;
  /// The system metadata relating to this resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetAccessConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Azure Databricks Access Connector properties
  /// [systemData] The system metadata relating to this resource
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  GetAccessConnectorResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccessConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAccessConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: AccessConnectorPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

