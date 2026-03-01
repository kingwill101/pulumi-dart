// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_sql_dwtable_data_set_mapping_args_doc}
/// The set of arguments for SqlDWTableDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_sql_dwtable_data_set_mapping_args_doc}
class SqlDWTableDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// DataWarehouse name of the source data set
  final pulumi.Input<String> dataWarehouseName;
  /// Kind of data set mapping.
  /// Expected value is 'SqlDWTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Schema of the table. Default value is dbo.
  final pulumi.Input<String> schemaName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Resource id of SQL server
  final pulumi.Input<String> sqlServerResourceId;
  /// SQL DW table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [SqlDWTableDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [dataWarehouseName] DataWarehouse name of the source data set
  /// [kind] Kind of data set mapping.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [tableName] SQL DW table name.
  SqlDWTableDataSetMappingArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> dataSetId,
    pulumi.Output<String>? dataSetMappingName,
    required pulumi.Output<String> dataWarehouseName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> shareSubscriptionName,
    required pulumi.Output<String> sqlServerResourceId,
    required pulumi.Output<String> tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      dataWarehouseName = pulumi.Input.asInput<String>(dataWarehouseName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      sqlServerResourceId = pulumi.Input.asInput<String>(sqlServerResourceId),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'dataWarehouseName': dataWarehouseName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'shareSubscriptionName': shareSubscriptionName,
      'sqlServerResourceId': sqlServerResourceId,
      'tableName': tableName,
    };
  }

  factory SqlDWTableDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return SqlDWTableDataSetMappingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetId: pulumi.Output.create<String>(map['dataSetId'] as String),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : pulumi.Output.create<String>(map['dataSetMappingName'] as String),
      dataWarehouseName: pulumi.Output.create<String>(map['dataWarehouseName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
      sqlServerResourceId: pulumi.Output.create<String>(map['sqlServerResourceId'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

