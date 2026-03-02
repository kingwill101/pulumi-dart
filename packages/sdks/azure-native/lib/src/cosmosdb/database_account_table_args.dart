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
    required this.accountName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tableName,
  });

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
      accountName: (map['accountName'] as String).input(),
      options: ((map['options'] as Map).cast<String, String>()).input(),
      resource: (TableResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName']! as String).input(),
    );
  }
}

