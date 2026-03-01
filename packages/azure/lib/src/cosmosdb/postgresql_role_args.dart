// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_postgresql_role_postgresql_role_args_doc}
/// The set of arguments for PostgresqlRole.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_postgresql_role_postgresql_role_args_doc}
class PostgresqlRoleArgs {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  final pulumi.Input<String> password;

  /// Creates a new [PostgresqlRoleArgs].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  /// [password] The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  PostgresqlRoleArgs({
    required String clusterId,
    String? name,
    required String password,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'password': password,
    };
  }

  factory PostgresqlRoleArgs.fromMap(Map<String, dynamic> map) {
    return PostgresqlRoleArgs(
      clusterId: map['clusterId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] as String,
    );
  }
}

