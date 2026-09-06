// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBlobFolderDataSet.
class GetBlobFolderDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Container that has the file path.
  final String? containerName;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'BlobFolder'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Prefix for blob folder
  final String? prefix;
  /// Resource group of storage account
  final String? resourceGroup;
  /// Storage account name of the source data set
  final String? storageAccountName;
  /// Subscription id of storage account
  final String? subscriptionId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetBlobFolderDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerName] Container that has the file path.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [prefix] Prefix for blob folder
  /// [resourceGroup] Resource group of storage account
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetBlobFolderDataSetResult({
    this.azureApiVersion,
    this.containerName,
    this.dataSetId,
    this.id,
    this.kind,
    this.name,
    this.prefix,
    this.resourceGroup,
    this.storageAccountName,
    this.subscriptionId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'containerName': ?containerName,
      'dataSetId': ?dataSetId,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'prefix': ?prefix,
      'resourceGroup': ?resourceGroup,
      'storageAccountName': ?storageAccountName,
      'subscriptionId': ?subscriptionId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetBlobFolderDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetBlobFolderDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
