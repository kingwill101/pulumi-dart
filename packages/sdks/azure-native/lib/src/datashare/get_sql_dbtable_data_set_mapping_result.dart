// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlDBTableDataSetMapping.
class GetSqlDBTableDataSetMappingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the source data set.
  final String? dataSetId;
  /// Gets the status of the data set mapping.
  final String? dataSetMappingStatus;
  /// DatabaseName name of the sink data set
  final String? databaseName;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set mapping.
  /// Expected value is 'SqlDBTable'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Provisioning state of the data set mapping.
  final String? provisioningState;
  /// Schema of the table. Default value is dbo.
  final String? schemaName;
  /// Resource id of SQL server
  final String? sqlServerResourceId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// SQL DB table name.
  final String? tableName;
  /// Type of the azure resource
  final String? type;

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
  const GetSqlDBTableDataSetMappingResult({
    this.azureApiVersion,
    this.dataSetId,
    this.dataSetMappingStatus,
    this.databaseName,
    this.id,
    this.kind,
    this.name,
    this.provisioningState,
    this.schemaName,
    this.sqlServerResourceId,
    this.systemData,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataSetId': ?dataSetId,
      'dataSetMappingStatus': ?dataSetMappingStatus,
      'databaseName': ?databaseName,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'schemaName': ?schemaName,
      'sqlServerResourceId': ?sqlServerResourceId,
      'systemData': ?systemData?.toMap(),
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetSqlDBTableDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDBTableDataSetMappingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetMappingStatus: (() { final guardedValue = map['dataSetMappingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlServerResourceId: (() { final guardedValue = map['sqlServerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
