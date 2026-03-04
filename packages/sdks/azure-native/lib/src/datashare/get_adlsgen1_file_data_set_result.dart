// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getADLSGen1FileDataSet.
class GetADLSGen1FileDataSetResult {
  /// The ADLS account name.
  final String accountName;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Unique id for identifying a data set resource
  final String dataSetId;

  /// The file name in the ADLS account.
  final String fileName;

  /// The folder path within the ADLS account.
  final String folderPath;

  /// The resource id of the azure resource
  final String id;

  /// Kind of data set.
  /// Expected value is 'AdlsGen1File'.
  final String kind;

  /// Name of the azure resource
  final String name;

  /// Resource group of ADLS account.
  final String resourceGroup;

  /// Subscription id of ADLS account.
  final String subscriptionId;

  /// System Data of the Azure resource.
  final SystemDataResponse systemData;

  /// Type of the azure resource
  final String type;

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
  GetADLSGen1FileDataSetResult({
    required this.accountName,
    required this.azureApiVersion,
    required this.dataSetId,
    required this.fileName,
    required this.folderPath,
    required this.id,
    required this.kind,
    required this.name,
    required this.resourceGroup,
    required this.subscriptionId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'azureApiVersion': azureApiVersion,
      'dataSetId': dataSetId,
      'fileName': fileName,
      'folderPath': folderPath,
      'id': id,
      'kind': kind,
      'name': name,
      'resourceGroup': resourceGroup,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetADLSGen1FileDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetADLSGen1FileDataSetResult(
      accountName: map['accountName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      fileName: map['fileName'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      resourceGroup: map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
