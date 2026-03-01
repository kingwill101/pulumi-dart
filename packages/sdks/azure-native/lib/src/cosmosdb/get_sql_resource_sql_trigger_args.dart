// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_resource_sql_trigger_args_doc}
/// Arguments for getSqlResourceSqlTrigger.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_resource_sql_trigger_args_doc}
class GetSqlResourceSqlTriggerArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String> containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB trigger name.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetSqlResourceSqlTriggerArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [triggerName] Cosmos DB trigger name.
  GetSqlResourceSqlTriggerArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> triggerName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetSqlResourceSqlTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlTriggerArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

