// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBlobDataSet.
class GetBlobDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Container that has the file path.
  final String containerName;
  /// Unique id for identifying a data set resource
  final String dataSetId;
  /// File path within the source data set
  final String filePath;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set.
  /// Expected value is 'Blob'.
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

  /// Creates a new [GetBlobDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerName] Container that has the file path.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [filePath] File path within the source data set
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [resourceGroup] Resource group of storage account
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetBlobDataSetResult({
    required this.azureApiVersion,
    required this.containerName,
    required this.dataSetId,
    required this.filePath,
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
      'containerName': containerName,
      'dataSetId': dataSetId,
      'filePath': filePath,
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

  factory GetBlobDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetBlobDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerName: map['containerName'] as String,
      dataSetId: map['dataSetId'] as String,
      filePath: map['filePath'] as String,
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

