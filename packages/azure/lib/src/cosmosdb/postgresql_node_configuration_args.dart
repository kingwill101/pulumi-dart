// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_postgresql_node_configuration_postgresql_node_configuration_args_doc}
/// The set of arguments for PostgresqlNodeConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_postgresql_node_configuration_postgresql_node_configuration_args_doc}
class PostgresqlNodeConfigurationArgs {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String> value;

  /// Creates a new [PostgresqlNodeConfigurationArgs].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  /// [name] The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  PostgresqlNodeConfigurationArgs({
    required String clusterId,
    String? name,
    required String value,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'value': value,
    };
  }

  factory PostgresqlNodeConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PostgresqlNodeConfigurationArgs(
      clusterId: map['clusterId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] as String,
    );
  }
}

