// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen2FileSystemDataSet.
class GetADLSGen2FileSystemDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Unique id for identifying a data set resource
  final String dataSetId;
  /// The file system name.
  final String fileSystem;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2FileSystem'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Resource group of storage account
  final String resourceGroup;
  /// Storage account name of the source data set
  final String storageAccountName;
  /// Subscription id of storage account
  final String subscriptionId;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;

  /// Creates a new [GetADLSGen2FileSystemDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [fileSystem] The file system name.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [resourceGroup] Resource group of storage account
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetADLSGen2FileSystemDataSetResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.fileSystem,
    required this.id,
    required this.kind,
    required this.name,
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
      'fileSystem': fileSystem,
      'id': id,
      'kind': kind,
      'name': name,
      'resourceGroup': resourceGroup,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetADLSGen2FileSystemDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FileSystemDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      fileSystem: map['fileSystem'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

