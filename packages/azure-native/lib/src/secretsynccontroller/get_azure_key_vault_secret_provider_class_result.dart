// ignore_for_file: unused_element, unnecessary_cast

import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureKeyVaultSecretProviderClass.
class GetAzureKeyVaultSecretProviderClassResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  final String clientId;
  /// The complex type of the extended location.
  final AzureResourceManagerCommonTypesExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the Azure Key Vault to sync secrets from.
  final String keyvaultName;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Objects defines the desired state of synced K8s secret objects
  final String? objects;
  /// Provisioning state of the AzureKeyVaultSecretProviderClass instance.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAzureKeyVaultSecretProviderClassResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientId] The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  /// [extendedLocation] The complex type of the extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyvaultName] The name of the Azure Key Vault to sync secrets from.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [objects] Objects defines the desired state of synced K8s secret objects
  /// [provisioningState] Provisioning state of the AzureKeyVaultSecretProviderClass instance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAzureKeyVaultSecretProviderClassResult({
    required this.azureApiVersion,
    required this.clientId,
    this.extendedLocation,
    required this.id,
    required this.keyvaultName,
    required this.location,
    required this.name,
    this.objects,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientId': clientId,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'keyvaultName': keyvaultName,
      'location': location,
      'name': name,
      'objects': ?objects,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetAzureKeyVaultSecretProviderClassResult.fromMap(Map<String, dynamic> map) {
    return GetAzureKeyVaultSecretProviderClassResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientId: map['clientId'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      keyvaultName: map['keyvaultName'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      objects: map['objects'] == null ? null : map['objects'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

