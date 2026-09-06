// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen2FolderDataSet.
class GetADLSGen2FolderDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// File system to which the folder belongs.
  final String? fileSystem;
  /// Folder path within the file system.
  final String? folderPath;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2Folder'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
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

  /// Creates a new [GetADLSGen2FolderDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [fileSystem] File system to which the folder belongs.
  /// [folderPath] Folder path within the file system.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [resourceGroup] Resource group of storage account
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetADLSGen2FolderDataSetResult({
    this.azureApiVersion,
    this.dataSetId,
    this.fileSystem,
    this.folderPath,
    this.id,
    this.kind,
    this.name,
    this.resourceGroup,
    this.storageAccountName,
    this.subscriptionId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataSetId': ?dataSetId,
      'fileSystem': ?fileSystem,
      'folderPath': ?folderPath,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'resourceGroup': ?resourceGroup,
      'storageAccountName': ?storageAccountName,
      'subscriptionId': ?subscriptionId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetADLSGen2FolderDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FolderDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
