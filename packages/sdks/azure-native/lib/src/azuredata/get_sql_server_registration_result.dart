// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlServerRegistration.
class GetSqlServerRegistrationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Optional Properties as JSON string
  final String? propertyBag;
  /// Resource Group Name
  final String? resourceGroup;
  /// Subscription Id
  final String? subscriptionId;
  /// Read only system data
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetSqlServerRegistrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [propertyBag] Optional Properties as JSON string
  /// [resourceGroup] Resource Group Name
  /// [subscriptionId] Subscription Id
  /// [systemData] Read only system data
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  GetSqlServerRegistrationResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    this.propertyBag,
    this.resourceGroup,
    this.subscriptionId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'propertyBag': ?propertyBag,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSqlServerRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerRegistrationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      propertyBag: map['propertyBag'] == null ? null : map['propertyBag']! as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup']! as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

