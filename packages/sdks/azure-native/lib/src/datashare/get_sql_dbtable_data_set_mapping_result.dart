// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlDBTableDataSetMapping.
class GetSqlDBTableDataSetMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the source data set.
  final String dataSetId;
  /// Gets the status of the data set mapping.
  final String dataSetMappingStatus;
  /// DatabaseName name of the sink data set
  final String databaseName;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set mapping.
  /// Expected value is 'SqlDBTable'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Provisioning state of the data set mapping.
  final String provisioningState;
  /// Schema of the table. Default value is dbo.
  final String schemaName;
  /// Resource id of SQL server
  final String sqlServerResourceId;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// SQL DB table name.
  final String tableName;
  /// Type of the azure resource
  final String type;

  /// Creates a new [GetSqlDBTableDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [databaseName] DatabaseName name of the sink data set
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [systemData] System Data of the Azure resource.
  /// [tableName] SQL DB table name.
  /// [type] Type of the azure resource
  GetSqlDBTableDataSetMappingResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.dataSetMappingStatus,
    required this.databaseName,
    required this.id,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.schemaName,
    required this.sqlServerResourceId,
    required this.systemData,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataSetId': dataSetId,
      'dataSetMappingStatus': dataSetMappingStatus,
      'databaseName': databaseName,
      'id': id,
      'kind': kind,
      'name': name,
      'provisioningState': provisioningState,
      'schemaName': schemaName,
      'sqlServerResourceId': sqlServerResourceId,
      'systemData': systemData.toMap(),
      'tableName': tableName,
      'type': type,
    };
  }

  factory GetSqlDBTableDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDBTableDataSetMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingStatus: map['dataSetMappingStatus'] as String,
      databaseName: map['databaseName'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaName: map['schemaName'] as String,
      sqlServerResourceId: map['sqlServerResourceId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}

