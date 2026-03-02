// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_sql_dbtable_data_set_args_doc}
/// The set of arguments for SqlDBTableDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_sql_dbtable_data_set_args_doc}
class SqlDBTableDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Database name of the source data set
  final pulumi.Input<String> databaseName;
  /// Kind of data set.
  /// Expected value is 'SqlDBTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Schema of the table. Default value is dbo.
  final pulumi.Input<String> schemaName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Resource id of SQL server
  final pulumi.Input<String> sqlServerResourceId;
  /// SQL DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [SqlDBTableDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [databaseName] Database name of the source data set
  /// [kind] Kind of data set.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [shareName] The name of the share to add the data set to.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [tableName] SQL DB table name.
  SqlDBTableDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.databaseName,
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
      'databaseName': databaseName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'shareName': shareName,
      'sqlServerResourceId': sqlServerResourceId,
      'tableName': tableName,
    };
  }

  factory SqlDBTableDataSetArgs.fromMap(Map<String, dynamic> map) {
    return SqlDBTableDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      sqlServerResourceId: (map['sqlServerResourceId'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

