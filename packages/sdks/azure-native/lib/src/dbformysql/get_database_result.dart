// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The charset of the database.
  final String? charset;
  /// The collation of the database.
  final String? collation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [charset] The charset of the database.
  /// [collation] The collation of the database.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDatabaseResult({
    required this.azureApiVersion,
    this.charset,
    this.collation,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'charset': ?charset,
      'collation': ?collation,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      charset: map['charset'] == null ? null : map['charset'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

