// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_list_database_account_keys_args_doc}
/// Arguments for listDatabaseAccountKeys.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_list_database_account_keys_args_doc}
class ListDatabaseAccountKeysArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDatabaseAccountKeysArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListDatabaseAccountKeysArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListDatabaseAccountKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListDatabaseAccountKeysArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

