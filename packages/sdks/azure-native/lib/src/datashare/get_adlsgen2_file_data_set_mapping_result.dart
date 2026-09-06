// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen2FileDataSetMapping.
class GetADLSGen2FileDataSetMappingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the source data set.
  final String? dataSetId;
  /// Gets the status of the data set mapping.
  final String? dataSetMappingStatus;
  /// File path within the file system.
  final String? filePath;
  /// File system to which the file belongs.
  final String? fileSystem;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set mapping.
  /// Expected value is 'AdlsGen2File'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Type of output file
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
  const GetADLSGen2FileDataSetMappingResult({
    this.azureApiVersion,
    this.dataSetId,
    this.dataSetMappingStatus,
    this.filePath,
    this.fileSystem,
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
      'dataSetId': ?dataSetId,
      'dataSetMappingStatus': ?dataSetMappingStatus,
      'filePath': ?filePath,
      'fileSystem': ?fileSystem,
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

  factory GetADLSGen2FileDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FileDataSetMappingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetMappingStatus: (() { final guardedValue = map['dataSetMappingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
