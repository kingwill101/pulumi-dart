// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen2FolderDataSetMapping.
class GetADLSGen2FolderDataSetMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the source data set.
  final String dataSetId;
  /// Gets the status of the data set mapping.
  final String dataSetMappingStatus;
  /// File system to which the folder belongs.
  final String fileSystem;
  /// Folder path within the file system.
  final String folderPath;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set mapping.
  /// Expected value is 'AdlsGen2Folder'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Provisioning state of the data set mapping.
  final String provisioningState;
  /// Resource group of storage account.
  final String resourceGroup;
  /// Storage account name of the source data set.
  final String storageAccountName;
  /// Subscription id of storage account.
  final String subscriptionId;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;

  /// Creates a new [GetADLSGen2FolderDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [fileSystem] File system to which the folder belongs.
  /// [folderPath] Folder path within the file system.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetADLSGen2FolderDataSetMappingResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.dataSetMappingStatus,
    required this.fileSystem,
    required this.folderPath,
    required this.id,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.resourceGroup,
    required this.storageAccountName,
    required this.subscriptionId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataSetId': dataSetId,
      'dataSetMappingStatus': dataSetMappingStatus,
      'fileSystem': fileSystem,
      'folderPath': folderPath,
      'id': id,
      'kind': kind,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGroup': resourceGroup,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetADLSGen2FolderDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FolderDataSetMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingStatus: map['dataSetMappingStatus'] as String,
      fileSystem: map['fileSystem'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

