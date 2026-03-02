// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_sql_dbtable_data_set_mapping_args_doc}
/// The set of arguments for SqlDBTableDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_sql_dbtable_data_set_mapping_args_doc}
class SqlDBTableDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// DatabaseName name of the sink data set
  final pulumi.Input<String> databaseName;
  /// Kind of data set mapping.
  /// Expected value is 'SqlDBTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Schema of the table. Default value is dbo.
  final pulumi.Input<String> schemaName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Resource id of SQL server
  final pulumi.Input<String> sqlServerResourceId;
  /// SQL DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [SqlDBTableDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [databaseName] DatabaseName name of the sink data set
  /// [kind] Kind of data set mapping.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] Schema of the table. Default value is dbo.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [sqlServerResourceId] Resource id of SQL server
  /// [tableName] SQL DB table name.
  SqlDBTableDataSetMappingArgs({
    required this.accountName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.databaseName,
    required this.kind,
    required this.resourceGroupName,
    required this.schemaName,
    required this.shareSubscriptionName,
    required this.sqlServerResourceId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'databaseName': databaseName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'shareSubscriptionName': shareSubscriptionName,
      'sqlServerResourceId': sqlServerResourceId,
      'tableName': tableName,
    };
  }

  factory SqlDBTableDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return SqlDBTableDataSetMappingArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : (map['dataSetMappingName']! as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      sqlServerResourceId: (map['sqlServerResourceId'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

