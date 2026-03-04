// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_keyspace_resource.dart';

/// {@template pulumi_cosmosdb_database_account_cassandra_keyspace_args_doc}
/// The set of arguments for DatabaseAccountCassandraKeyspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_cassandra_keyspace_args_doc}
class DatabaseAccountCassandraKeyspaceArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Cosmos DB keyspace name.
  final pulumi.Input<String>? keyspaceName;

  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;

  /// The standard JSON format of a Cassandra keyspace
  final pulumi.Input<CassandraKeyspaceResource> resource;

  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountCassandraKeyspaceArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Cassandra keyspace
  /// [resourceGroupName] Name of an Azure resource group.
  DatabaseAccountCassandraKeyspaceArgs({
    required this.accountName,
    this.keyspaceName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': ?keyspaceName,
      'options': options,
      'resource':
          pulumi.Input.mapInputValue<
            CassandraKeyspaceResource,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountCassandraKeyspaceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseAccountCassandraKeyspaceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      keyspaceName: (() {
        final guardedValue = map['keyspaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      options: pulumi.Input.fromValue(
        (map['options'] as Map).cast<String, String>(),
      ),
      resource: pulumi.Input.fromValue(
        CassandraKeyspaceResource.fromMap(
          (map['resource']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
