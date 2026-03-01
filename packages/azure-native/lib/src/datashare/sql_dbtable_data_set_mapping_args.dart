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
    required String accountName,
    required String dataSetId,
    String? dataSetMappingName,
    required String databaseName,
    required String kind,
    required String resourceGroupName,
    required String schemaName,
    required String shareSubscriptionName,
    required String sqlServerResourceId,
    required String tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
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
      accountName: map['accountName'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingName: map['dataSetMappingName'] == null ? null : map['dataSetMappingName'] as String,
      databaseName: map['databaseName'] as String,
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaName: map['schemaName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
      sqlServerResourceId: map['sqlServerResourceId'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

