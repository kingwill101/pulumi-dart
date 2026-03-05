// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKustoDatabaseDataSet.
class GetKustoDatabaseDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Unique id for identifying a data set resource
  final String dataSetId;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set.
  /// Expected value is 'KustoDatabase'.
  final String kind;
  /// Resource id of the kusto database.
  final String kustoDatabaseResourceId;
  /// Location of the kusto cluster.
  final String location;
  /// Name of the azure resource
  final String name;
  /// Provisioning state of the kusto database data set.
  final String provisioningState;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;

  /// Creates a new [GetKustoDatabaseDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [kustoDatabaseResourceId] Resource id of the kusto database.
  /// [location] Location of the kusto cluster.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the kusto database data set.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetKustoDatabaseDataSetResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.id,
    required this.kind,
    required this.kustoDatabaseResourceId,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataSetId': dataSetId,
      'id': id,
      'kind': kind,
      'kustoDatabaseResourceId': kustoDatabaseResourceId,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetKustoDatabaseDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetKustoDatabaseDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      kustoDatabaseResourceId: map['kustoDatabaseResourceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

