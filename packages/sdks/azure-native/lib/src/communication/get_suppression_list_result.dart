// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppressionList.
class GetSuppressionListResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date the resource was created.
  final String createdTimeStamp;
  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  final String dataLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The date the resource was last updated.
  final String lastUpdatedTimeStamp;
  /// The the name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  final String? listName;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSuppressionListResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimeStamp] The date the resource was created.
  /// [dataLocation] The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastUpdatedTimeStamp] The date the resource was last updated.
  /// [listName] The the name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSuppressionListResult({
    required this.azureApiVersion,
    required this.createdTimeStamp,
    required this.dataLocation,
    required this.id,
    required this.lastUpdatedTimeStamp,
    this.listName,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTimeStamp': createdTimeStamp,
      'dataLocation': dataLocation,
      'id': id,
      'lastUpdatedTimeStamp': lastUpdatedTimeStamp,
      'listName': ?listName,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSuppressionListResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimeStamp: map['createdTimeStamp'] as String,
      dataLocation: map['dataLocation'] as String,
      id: map['id'] as String,
      lastUpdatedTimeStamp: map['lastUpdatedTimeStamp'] as String,
      listName: (() { final guardedValue = map['listName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

