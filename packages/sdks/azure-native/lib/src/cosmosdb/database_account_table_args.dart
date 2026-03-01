// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_resource.dart';

/// {@template pulumi_cosmosdb_database_account_table_args_doc}
/// The set of arguments for DatabaseAccountTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_table_args_doc}
class DatabaseAccountTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a Table
  final pulumi.Input<TableResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String>? tableName;

  /// Creates a new [DatabaseAccountTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Table
  /// [resourceGroupName] Name of an Azure resource group.
  /// [tableName] Cosmos DB table name.
  DatabaseAccountTableArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<Map<String, String>> options,
    required pulumi.Output<TableResource> resource,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<TableResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<TableResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
    };
  }

  factory DatabaseAccountTableArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountTableArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      options: pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
      resource: pulumi.Output.create<TableResource>(TableResource.fromMap((map['resource'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

