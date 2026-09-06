// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen1FileDataSet.
class GetADLSGen1FileDataSetResult {
  /// The ADLS account name.
  final String? accountName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// The file name in the ADLS account.
  final String? fileName;
  /// The folder path within the ADLS account.
  final String? folderPath;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'AdlsGen1File'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Resource group of ADLS account.
  final String? resourceGroup;
  /// Subscription id of ADLS account.
  final String? subscriptionId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetADLSGen1FileDataSetResult].
  /// [accountName] The ADLS account name.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [fileName] The file name in the ADLS account.
  /// [folderPath] The folder path within the ADLS account.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [resourceGroup] Resource group of ADLS account.
  /// [subscriptionId] Subscription id of ADLS account.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetADLSGen1FileDataSetResult({
    this.accountName,
    this.azureApiVersion,
    this.dataSetId,
    this.fileName,
    this.folderPath,
    this.id,
    this.kind,
    this.name,
    this.resourceGroup,
    this.subscriptionId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'azureApiVersion': ?azureApiVersion,
      'dataSetId': ?dataSetId,
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetADLSGen1FileDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen1FileDataSetResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
