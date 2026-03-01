// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBlobDataSetMapping.
class GetBlobDataSetMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Container that has the file path.
  final String containerName;
  /// The id of the source data set.
  final String dataSetId;
  /// Gets the status of the data set mapping.
  final String dataSetMappingStatus;
  /// File path within the source data set
  final String filePath;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set mapping.
  /// Expected value is 'Blob'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// File output type
  final String? outputType;
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

  /// Creates a new [GetBlobDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerName] Container that has the file path.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [filePath] File path within the source data set
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [name] Name of the azure resource
  /// [outputType] File output type
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetBlobDataSetMappingResult({
    required this.azureApiVersion,
    required this.containerName,
    required this.dataSetId,
    required this.dataSetMappingStatus,
    required this.filePath,
    required this.id,
    required this.kind,
    required this.name,
    this.outputType,
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
      'containerName': containerName,
      'dataSetId': dataSetId,
      'dataSetMappingStatus': dataSetMappingStatus,
      'filePath': filePath,
      'id': id,
      'kind': kind,
      'name': name,
      'outputType': ?outputType,
      'provisioningState': provisioningState,
      'resourceGroup': resourceGroup,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBlobDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetBlobDataSetMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerName: map['containerName'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingStatus: map['dataSetMappingStatus'] as String,
      filePath: map['filePath'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      outputType: map['outputType'] == null ? null : map['outputType'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

