// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppressionList.
class GetSuppressionListResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The date the resource was created.
  final String? createdTimeStamp;
  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  final String? dataLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The date the resource was last updated.
  final String? lastUpdatedTimeStamp;
  /// The name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  final String? listName;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSuppressionListResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimeStamp] The date the resource was created.
  /// [dataLocation] The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastUpdatedTimeStamp] The date the resource was last updated.
  /// [listName] The name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSuppressionListResult({
    this.azureApiVersion,
    this.createdTimeStamp,
    this.dataLocation,
    this.id,
    this.lastUpdatedTimeStamp,
    this.listName,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdTimeStamp': ?createdTimeStamp,
      'dataLocation': ?dataLocation,
      'id': ?id,
      'lastUpdatedTimeStamp': ?lastUpdatedTimeStamp,
      'listName': ?listName,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSuppressionListResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimeStamp: (() { final guardedValue = map['createdTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTimeStamp: (() { final guardedValue = map['lastUpdatedTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listName: (() { final guardedValue = map['listName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
