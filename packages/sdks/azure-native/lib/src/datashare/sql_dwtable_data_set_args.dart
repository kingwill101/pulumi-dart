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
  SqlDWTableDataSetArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? dataSetName,
    required pulumi.Output<String> dataWarehouseName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> sqlServerResourceId,
    required pulumi.Output<String> tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      dataWarehouseName = pulumi.Input.asInput<String>(dataWarehouseName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      shareName = pulumi.Input.asInput<String>(shareName),
      sqlServerResourceId = pulumi.Input.asInput<String>(sqlServerResourceId),
      tableName = pulumi.Input.asInput<String>(tableName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetName: map['dataSetName'] == null ? null : pulumi.Output.create<String>(map['dataSetName'] as String),
      dataWarehouseName: pulumi.Output.create<String>(map['dataWarehouseName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      sqlServerResourceId: pulumi.Output.create<String>(map['sqlServerResourceId'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

