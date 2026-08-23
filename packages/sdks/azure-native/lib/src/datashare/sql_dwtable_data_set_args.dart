// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_sql_dwtable_data_set_args_doc}
/// The set of arguments for SqlDWTableDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_sql_dwtable_data_set_args_doc}
class SqlDWTableDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// DataWarehouse name of the source data set
  final pulumi.Input<String> dataWarehouseName;
  /// Kind of data set.
  /// Expected value is 'SqlDWTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Schema of the table. Default value is dbo.
  final pulumi.Input<String> schemaName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Resource id of SQL server
  final pulumi.Input<String> sqlServerResourceId;
  /// SQL DW table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [SqlDWTableDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [dataWarehouseName] DataWarehouse name of the source data set
  /// [kind] Kind of data set.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [shareName] The name of the share to add the data set to.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [tableName] SQL DW table name.
  const SqlDWTableDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.dataWarehouseName,
    required this.kind,
    required this.resourceGroupName,
    required this.schemaName,
    required this.shareName,
    required this.sqlServerResourceId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'dataWarehouseName': dataWarehouseName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'shareName': shareName,
      'sqlServerResourceId': sqlServerResourceId,
      'tableName': tableName,
    };
  }

  factory SqlDWTableDataSetArgs.fromMap(Map<String, dynamic> map) {
    return SqlDWTableDataSetArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetName: (() { final guardedValue = map['dataSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataWarehouseName: pulumi.Input.fromValue(map['dataWarehouseName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      sqlServerResourceId: pulumi.Input.fromValue(map['sqlServerResourceId'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
