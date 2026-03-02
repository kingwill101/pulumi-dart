// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_profile_resource_properties_response.dart';
import 'resource_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConfigurationProfile.
class GetConfigurationProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity block returned by ARM resource that supports managed identity.
  final ResourceIdentityResponse? identity;
  /// The location where the resource is to be deployed.
  final String? location;
  /// The name of the resource
  final String name;
  /// The properties of a configuration profile.
  final ConfigurationProfileResourcePropertiesResponse properties;
  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConfigurationProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity block returned by ARM resource that supports managed identity.
  /// [location] The location where the resource is to be deployed.
  /// [name] The name of the resource
  /// [properties] The properties of a configuration profile.
  /// [systemData] Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConfigurationProfileResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': ?systemData == null ? null : systemData!.toMap(),
      'type': type,
    };
  }

  factory GetConfigurationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ResourceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: ConfigurationProfileResourcePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: map['systemData'] == null ? null : SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

