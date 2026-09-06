// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlDWTableDataSet.
class GetSqlDWTableDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// DataWarehouse name of the source data set
  final String? dataWarehouseName;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'SqlDWTable'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Schema of the table. Default value is dbo.
  final String? schemaName;
  /// Resource id of SQL server
  final String? sqlServerResourceId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// SQL DW table name.
  final String? tableName;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetSqlDWTableDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [dataWarehouseName] DataWarehouse name of the source data set
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [systemData] System Data of the Azure resource.
  /// [tableName] SQL DW table name.
  /// [type] Type of the azure resource
  const GetSqlDWTableDataSetResult({
    this.azureApiVersion,
    this.dataSetId,
    this.dataWarehouseName,
    this.id,
    this.kind,
    this.name,
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
      'dataWarehouseName': ?dataWarehouseName,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'schemaName': ?schemaName,
      'sqlServerResourceId': ?sqlServerResourceId,
      'systemData': ?systemData?.toMap(),
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetSqlDWTableDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDWTableDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataWarehouseName: (() { final guardedValue = map['dataWarehouseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlServerResourceId: (() { final guardedValue = map['sqlServerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
