// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKustoDatabaseDataSetMapping.
class GetKustoDatabaseDataSetMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the source data set.
  final String dataSetId;
  /// Gets the status of the data set mapping.
  final String dataSetMappingStatus;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set mapping.
  /// Expected value is 'KustoDatabase'.
  final String kind;
  /// Resource id of the sink kusto cluster.
  final String kustoClusterResourceId;
  /// Location of the sink kusto cluster.
  final String location;
  /// Name of the azure resource
  final String name;
  /// Provisioning state of the data set mapping.
  final String provisioningState;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;

  /// Creates a new [GetKustoDatabaseDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [kustoClusterResourceId] Resource id of the sink kusto cluster.
  /// [location] Location of the sink kusto cluster.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  GetKustoDatabaseDataSetMappingResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.dataSetMappingStatus,
    required this.id,
    required this.kind,
    required this.kustoClusterResourceId,
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
      'dataSetMappingStatus': dataSetMappingStatus,
      'id': id,
      'kind': kind,
      'kustoClusterResourceId': kustoClusterResourceId,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetKustoDatabaseDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetKustoDatabaseDataSetMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingStatus: map['dataSetMappingStatus'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      kustoClusterResourceId: map['kustoClusterResourceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

