// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen2FileDataSetMapping.
class GetADLSGen2FileDataSetMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the source data set.
  final String dataSetId;
  /// Gets the status of the data set mapping.
  final String dataSetMappingStatus;
  /// File path within the file system.
  final String filePath;
  /// File system to which the file belongs.
  final String fileSystem;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set mapping.
  /// Expected value is 'AdlsGen2File'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Type of output file
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

  /// Creates a new [GetADLSGen2FileDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [filePath] File path within the file system.
  /// [fileSystem] File system to which the file belongs.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [name] Name of the azure resource
  /// [outputType] Type of output file
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetADLSGen2FileDataSetMappingResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.dataSetMappingStatus,
    required this.filePath,
    required this.fileSystem,
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
      'dataSetId': dataSetId,
      'dataSetMappingStatus': dataSetMappingStatus,
      'filePath': filePath,
      'fileSystem': fileSystem,
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

  factory GetADLSGen2FileDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FileDataSetMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingStatus: map['dataSetMappingStatus'] as String,
      filePath: map['filePath'] as String,
      fileSystem: map['fileSystem'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

