// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBlobContainerDataSet.
class GetBlobContainerDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// BLOB Container name.
  final String containerName;
  /// Unique id for identifying a data set resource
  final String dataSetId;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set.
  /// Expected value is 'Container'.
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

  /// Creates a new [GetBlobContainerDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerName] BLOB Container name.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [resourceGroup] Resource group of storage account
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetBlobContainerDataSetResult({
    required this.azureApiVersion,
    required this.containerName,
    required this.dataSetId,
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

  factory GetBlobContainerDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetBlobContainerDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerName: map['containerName'] as String,
      dataSetId: map['dataSetId'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

