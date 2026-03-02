// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_cassandra_resource_cassandra_view_args_doc}
/// Arguments for getCassandraResourceCassandraView.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_view_args_doc}
class GetCassandraResourceCassandraViewArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB view name.
  final pulumi.Input<String> viewName;

  /// Creates a new [GetCassandraResourceCassandraViewArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [viewName] Cosmos DB view name.
  GetCassandraResourceCassandraViewArgs({
    required this.accountName,
    required this.keyspaceName,
    required this.resourceGroupName,
    required this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'resourceGroupName': resourceGroupName,
      'viewName': viewName,
    };
  }

  factory GetCassandraResourceCassandraViewArgs.fromMap(Map<String, dynamic> map) {
    return GetCassandraResourceCassandraViewArgs(
      accountName: (map['accountName'] as String).input(),
      keyspaceName: (map['keyspaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      viewName: (map['viewName'] as String).input(),
    );
  }
}

