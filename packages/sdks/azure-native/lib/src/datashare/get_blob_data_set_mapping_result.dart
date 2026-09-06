// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBlobDataSetMapping.
class GetBlobDataSetMappingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Container that has the file path.
  final String? containerName;
  /// The id of the source data set.
  final String? dataSetId;
  /// Gets the status of the data set mapping.
  final String? dataSetMappingStatus;
  /// File path within the source data set
  final String? filePath;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set mapping.
  /// Expected value is 'Blob'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// File output type
  final String? outputType;
  /// Provisioning state of the data set mapping.
  final String? provisioningState;
  /// Resource group of storage account.
  final String? resourceGroup;
  /// Storage account name of the source data set.
  final String? storageAccountName;
  /// Subscription id of storage account.
  final String? subscriptionId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

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
  const GetBlobDataSetMappingResult({
    this.azureApiVersion,
    this.containerName,
    this.dataSetId,
    this.dataSetMappingStatus,
    this.filePath,
    this.id,
    this.kind,
    this.name,
    this.outputType,
    this.provisioningState,
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
      'dataSetMappingStatus': ?dataSetMappingStatus,
      'filePath': ?filePath,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'outputType': ?outputType,
      'provisioningState': ?provisioningState,
      'resourceGroup': ?resourceGroup,
      'storageAccountName': ?storageAccountName,
      'subscriptionId': ?subscriptionId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetBlobDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetBlobDataSetMappingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetMappingStatus: (() { final guardedValue = map['dataSetMappingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
