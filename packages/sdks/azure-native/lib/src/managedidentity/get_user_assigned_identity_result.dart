// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getUserAssignedIdentity.
class GetUserAssignedIdentityResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the app associated with the identity. This is a random generated UUID by MSI.
  final String clientId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The id of the service principal object associated with the created identity.
  final String principalId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The id of the tenant which the identity belongs to.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetUserAssignedIdentityResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientId] The id of the app associated with the identity. This is a random generated UUID by MSI.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [principalId] The id of the service principal object associated with the created identity.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] The id of the tenant which the identity belongs to.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetUserAssignedIdentityResult({
    required this.azureApiVersion,
    required this.clientId,
    required this.id,
    required this.location,
    required this.name,
    required this.principalId,
    required this.systemData,
    this.tags,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientId': clientId,
      'id': id,
      'location': location,
      'name': name,
      'principalId': principalId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetUserAssignedIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientId: map['clientId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

