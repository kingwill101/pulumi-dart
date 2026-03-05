// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlDBTableDataSet.
class GetSqlDBTableDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Unique id for identifying a data set resource
  final String dataSetId;
  /// Database name of the source data set
  final String databaseName;
  /// The resource id of the azure resource
  final String id;
  /// Kind of data set.
  /// Expected value is 'SqlDBTable'.
  final String kind;
  /// Name of the azure resource
  final String name;
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

  /// Creates a new [GetSqlDBTableDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [databaseName] Database name of the source data set
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [systemData] System Data of the Azure resource.
  /// [tableName] SQL DB table name.
  /// [type] Type of the azure resource
  GetSqlDBTableDataSetResult({
    required this.azureApiVersion,
    required this.dataSetId,
    required this.databaseName,
    required this.id,
    required this.kind,
    required this.name,
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
      'databaseName': databaseName,
      'id': id,
      'kind': kind,
      'name': name,
      'schemaName': schemaName,
      'sqlServerResourceId': sqlServerResourceId,
      'systemData': systemData.toMap(),
      'tableName': tableName,
      'type': type,
    };
  }

  factory GetSqlDBTableDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDBTableDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataSetId: map['dataSetId'] as String,
      databaseName: map['databaseName'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      schemaName: map['schemaName'] as String,
      sqlServerResourceId: map['sqlServerResourceId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}

