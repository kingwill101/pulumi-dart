import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cassandra_cluster_args.dart';
import 'get_cassandra_cluster_result.dart';
import 'get_cassandra_data_center_args.dart';
import 'get_cassandra_data_center_result.dart';
import 'get_cassandra_resource_cassandra_keyspace_args.dart';
import 'get_cassandra_resource_cassandra_keyspace_result.dart';
import 'get_cassandra_resource_cassandra_role_assignment_args.dart';
import 'get_cassandra_resource_cassandra_role_assignment_result.dart';
import 'get_cassandra_resource_cassandra_role_definition_args.dart';
import 'get_cassandra_resource_cassandra_role_definition_result.dart';
import 'get_cassandra_resource_cassandra_table_args.dart';
import 'get_cassandra_resource_cassandra_table_result.dart';
import 'get_cassandra_resource_cassandra_view_args.dart';
import 'get_cassandra_resource_cassandra_view_result.dart';
import 'get_database_account_args.dart';
import 'get_database_account_cassandra_keyspace_args.dart';
import 'get_database_account_cassandra_keyspace_result.dart';
import 'get_database_account_cassandra_table_args.dart';
import 'get_database_account_cassandra_table_result.dart';
import 'get_database_account_gremlin_database_args.dart';
import 'get_database_account_gremlin_database_result.dart';
import 'get_database_account_gremlin_graph_args.dart';
import 'get_database_account_gremlin_graph_result.dart';
import 'get_database_account_mongo_dbcollection_args.dart';
import 'get_database_account_mongo_dbcollection_result.dart';
import 'get_database_account_mongo_dbdatabase_args.dart';
import 'get_database_account_mongo_dbdatabase_result.dart';
import 'get_database_account_result.dart';
import 'get_database_account_sql_container_args.dart';
import 'get_database_account_sql_container_result.dart';
import 'get_database_account_sql_database_args.dart';
import 'get_database_account_sql_database_result.dart';
import 'get_database_account_table_args.dart';
import 'get_database_account_table_result.dart';
import 'get_fleet_analytic_args.dart';
import 'get_fleet_analytic_result.dart';
import 'get_fleet_args.dart';
import 'get_fleet_result.dart';
import 'get_fleetspace_account_args.dart';
import 'get_fleetspace_account_result.dart';
import 'get_fleetspace_args.dart';
import 'get_fleetspace_result.dart';
import 'get_garnet_cluster_args.dart';
import 'get_garnet_cluster_result.dart';
import 'get_graph_resource_graph_args.dart';
import 'get_graph_resource_graph_result.dart';
import 'get_gremlin_resource_gremlin_database_args.dart';
import 'get_gremlin_resource_gremlin_database_result.dart';
import 'get_gremlin_resource_gremlin_graph_args.dart';
import 'get_gremlin_resource_gremlin_graph_result.dart';
import 'get_gremlin_resource_gremlin_role_assignment_args.dart';
import 'get_gremlin_resource_gremlin_role_assignment_result.dart';
import 'get_gremlin_resource_gremlin_role_definition_args.dart';
import 'get_gremlin_resource_gremlin_role_definition_result.dart';
import 'get_mongo_cluster_args.dart';
import 'get_mongo_cluster_firewall_rule_args.dart';
import 'get_mongo_cluster_firewall_rule_result.dart';
import 'get_mongo_cluster_result.dart';
import 'get_mongo_dbresource_mongo_dbcollection_args.dart';
import 'get_mongo_dbresource_mongo_dbcollection_result.dart';
import 'get_mongo_dbresource_mongo_dbdatabase_args.dart';
import 'get_mongo_dbresource_mongo_dbdatabase_result.dart';
import 'get_mongo_dbresource_mongo_role_definition_args.dart';
import 'get_mongo_dbresource_mongo_role_definition_result.dart';
import 'get_mongo_dbresource_mongo_user_definition_args.dart';
import 'get_mongo_dbresource_mongo_user_definition_result.dart';
import 'get_mongo_miresource_mongo_mirole_assignment_args.dart';
import 'get_mongo_miresource_mongo_mirole_assignment_result.dart';
import 'get_mongo_miresource_mongo_mirole_definition_args.dart';
import 'get_mongo_miresource_mongo_mirole_definition_result.dart';
import 'get_notebook_workspace_args.dart';
import 'get_notebook_workspace_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_sql_resource_sql_container_args.dart';
import 'get_sql_resource_sql_container_result.dart';
import 'get_sql_resource_sql_database_args.dart';
import 'get_sql_resource_sql_database_result.dart';
import 'get_sql_resource_sql_role_assignment_args.dart';
import 'get_sql_resource_sql_role_assignment_result.dart';
import 'get_sql_resource_sql_role_definition_args.dart';
import 'get_sql_resource_sql_role_definition_result.dart';
import 'get_sql_resource_sql_stored_procedure_args.dart';
import 'get_sql_resource_sql_stored_procedure_result.dart';
import 'get_sql_resource_sql_trigger_args.dart';
import 'get_sql_resource_sql_trigger_result.dart';
import 'get_sql_resource_sql_user_defined_function_args.dart';
import 'get_sql_resource_sql_user_defined_function_result.dart';
import 'get_table_resource_table_args.dart';
import 'get_table_resource_table_result.dart';
import 'get_table_resource_table_role_assignment_args.dart';
import 'get_table_resource_table_role_assignment_result.dart';
import 'get_table_resource_table_role_definition_args.dart';
import 'get_table_resource_table_role_definition_result.dart';
import 'get_throughput_pool_account_args.dart';
import 'get_throughput_pool_account_result.dart';
import 'get_throughput_pool_args.dart';
import 'get_throughput_pool_result.dart';
import 'list_database_account_connection_strings_args.dart';
import 'list_database_account_connection_strings_result.dart';
import 'list_database_account_keys_args.dart';
import 'list_database_account_keys_result.dart';
import 'list_mongo_cluster_connection_strings_args.dart';
import 'list_mongo_cluster_connection_strings_result.dart';
import 'list_notebook_workspace_connection_info_args.dart';
import 'list_notebook_workspace_connection_info_result.dart';

/// Get the properties of a managed Cassandra cluster.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraClusterResult> getCassandraCluster(
  GetCassandraClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraClusterResult.fromMap(result);
}

/// Get the properties of a managed Cassandra data center.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_data_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraDataCenterResult> getCassandraDataCenter(
  GetCassandraDataCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraDataCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraDataCenterResult.fromMap(result);
}

/// Gets the Cassandra keyspaces under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_keyspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraResourceCassandraKeyspaceResult> getCassandraResourceCassandraKeyspace(
  GetCassandraResourceCassandraKeyspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraKeyspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraResourceCassandraKeyspaceResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Cassandra Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraResourceCassandraRoleAssignmentResult> getCassandraResourceCassandraRoleAssignment(
  GetCassandraResourceCassandraRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraResourceCassandraRoleAssignmentResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Cassandra Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraResourceCassandraRoleDefinitionResult> getCassandraResourceCassandraRoleDefinition(
  GetCassandraResourceCassandraRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraResourceCassandraRoleDefinitionResult.fromMap(result);
}

/// Gets the Cassandra table under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraResourceCassandraTableResult> getCassandraResourceCassandraTable(
  GetCassandraResourceCassandraTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraResourceCassandraTableResult.fromMap(result);
}

/// Gets the Cassandra view under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCassandraResourceCassandraViewResult> getCassandraResourceCassandraView(
  GetCassandraResourceCassandraViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCassandraResourceCassandraViewResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountResult> getDatabaseAccount(
  GetDatabaseAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountResult.fromMap(result);
}

/// Gets the Cassandra keyspaces under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_cassandra_keyspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountCassandraKeyspaceResult> getDatabaseAccountCassandraKeyspace(
  GetDatabaseAccountCassandraKeyspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountCassandraKeyspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountCassandraKeyspaceResult.fromMap(result);
}

/// Gets the Cassandra table under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_cassandra_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountCassandraTableResult> getDatabaseAccountCassandraTable(
  GetDatabaseAccountCassandraTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountCassandraTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountCassandraTableResult.fromMap(result);
}

/// Gets the Gremlin databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_gremlin_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountGremlinDatabaseResult> getDatabaseAccountGremlinDatabase(
  GetDatabaseAccountGremlinDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountGremlinDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountGremlinDatabaseResult.fromMap(result);
}

/// Gets the Gremlin graph under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_gremlin_graph_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountGremlinGraphResult> getDatabaseAccountGremlinGraph(
  GetDatabaseAccountGremlinGraphArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountGremlinGraph',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountGremlinGraphResult.fromMap(result);
}

/// Gets the MongoDB collection under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_mongo_dbcollection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountMongoDBCollectionResult> getDatabaseAccountMongoDBCollection(
  GetDatabaseAccountMongoDBCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountMongoDBCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountMongoDBCollectionResult.fromMap(result);
}

/// Gets the MongoDB databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_mongo_dbdatabase_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountMongoDBDatabaseResult> getDatabaseAccountMongoDBDatabase(
  GetDatabaseAccountMongoDBDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountMongoDBDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountMongoDBDatabaseResult.fromMap(result);
}

/// Gets the SQL container under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_sql_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountSqlContainerResult> getDatabaseAccountSqlContainer(
  GetDatabaseAccountSqlContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountSqlContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountSqlContainerResult.fromMap(result);
}

/// Gets the SQL database under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_sql_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountSqlDatabaseResult> getDatabaseAccountSqlDatabase(
  GetDatabaseAccountSqlDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountSqlDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountSqlDatabaseResult.fromMap(result);
}

/// Gets the Tables under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_database_account_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAccountTableResult> getDatabaseAccountTable(
  GetDatabaseAccountTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAccountTableResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleet under a subscription
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB FleetAnalytics under a fleet
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_fleet_analytic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetAnalyticResult> getFleetAnalytic(
  GetFleetAnalyticArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetAnalytic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetAnalyticResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleetspace under a fleet
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_fleetspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetspaceResult> getFleetspace(
  GetFleetspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetspaceResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleetspace account under a fleetspace
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_fleetspace_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetspaceAccountResult> getFleetspaceAccount(
  GetFleetspaceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetspaceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetspaceAccountResult.fromMap(result);
}

/// Get the properties of a Garnet cache cluster.
///
/// Uses Azure REST API version 2025-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_garnet_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGarnetClusterResult> getGarnetCluster(
  GetGarnetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGarnetCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGarnetClusterResult.fromMap(result);
}

/// Gets the Graph resource under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_graph_resource_graph_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGraphResourceGraphResult> getGraphResourceGraph(
  GetGraphResourceGraphArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGraphResourceGraph',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGraphResourceGraphResult.fromMap(result);
}

/// Gets the Gremlin databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGremlinResourceGremlinDatabaseResult> getGremlinResourceGremlinDatabase(
  GetGremlinResourceGremlinDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGremlinResourceGremlinDatabaseResult.fromMap(result);
}

/// Gets the Gremlin graph under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_graph_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGremlinResourceGremlinGraphResult> getGremlinResourceGremlinGraph(
  GetGremlinResourceGremlinGraphArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinGraph',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGremlinResourceGremlinGraphResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Gremlin Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGremlinResourceGremlinRoleAssignmentResult> getGremlinResourceGremlinRoleAssignment(
  GetGremlinResourceGremlinRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGremlinResourceGremlinRoleAssignmentResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Gremlin Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGremlinResourceGremlinRoleDefinitionResult> getGremlinResourceGremlinRoleDefinition(
  GetGremlinResourceGremlinRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGremlinResourceGremlinRoleDefinitionResult.fromMap(result);
}

/// Gets information about a mongo cluster.
///
/// Uses Azure REST API version 2024-02-15-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoClusterResult> getMongoCluster(
  GetMongoClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoClusterResult.fromMap(result);
}

/// Gets information about a mongo cluster firewall rule.
///
/// Uses Azure REST API version 2024-02-15-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_cluster_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoClusterFirewallRuleResult> getMongoClusterFirewallRule(
  GetMongoClusterFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoClusterFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoClusterFirewallRuleResult.fromMap(result);
}

/// Gets the MongoDB collection under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_dbcollection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoDBResourceMongoDBCollectionResult> getMongoDBResourceMongoDBCollection(
  GetMongoDBResourceMongoDBCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoDBCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoDBResourceMongoDBCollectionResult.fromMap(result);
}

/// Gets the MongoDB databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_dbdatabase_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoDBResourceMongoDBDatabaseResult> getMongoDBResourceMongoDBDatabase(
  GetMongoDBResourceMongoDBDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoDBDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoDBResourceMongoDBDatabaseResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Mongo Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoDBResourceMongoRoleDefinitionResult> getMongoDBResourceMongoRoleDefinition(
  GetMongoDBResourceMongoRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoDBResourceMongoRoleDefinitionResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Mongo User Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_user_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoDBResourceMongoUserDefinitionResult> getMongoDBResourceMongoUserDefinition(
  GetMongoDBResourceMongoUserDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoUserDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoDBResourceMongoUserDefinitionResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB MongoMI Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoMIResourceMongoMIRoleAssignmentResult> getMongoMIResourceMongoMIRoleAssignment(
  GetMongoMIResourceMongoMIRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoMIResourceMongoMIRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoMIResourceMongoMIRoleAssignmentResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB MongoMI Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoMIResourceMongoMIRoleDefinitionResult> getMongoMIResourceMongoMIRoleDefinition(
  GetMongoMIResourceMongoMIRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoMIResourceMongoMIRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoMIResourceMongoMIRoleDefinitionResult.fromMap(result);
}

/// Gets the notebook workspace for a Cosmos DB account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_notebook_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookWorkspaceResult> getNotebookWorkspace(
  GetNotebookWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getNotebookWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookWorkspaceResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01-preview, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the status of service.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-04-01-preview, 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets the SQL container under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlContainerResult> getSqlResourceSqlContainer(
  GetSqlResourceSqlContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlContainerResult.fromMap(result);
}

/// Gets the SQL database under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlDatabaseResult> getSqlResourceSqlDatabase(
  GetSqlResourceSqlDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlDatabaseResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB SQL Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlRoleAssignmentResult> getSqlResourceSqlRoleAssignment(
  GetSqlResourceSqlRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlRoleAssignmentResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB SQL Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlRoleDefinitionResult> getSqlResourceSqlRoleDefinition(
  GetSqlResourceSqlRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlRoleDefinitionResult.fromMap(result);
}

/// Gets the SQL storedProcedure under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_stored_procedure_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlStoredProcedureResult> getSqlResourceSqlStoredProcedure(
  GetSqlResourceSqlStoredProcedureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlStoredProcedure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlStoredProcedureResult.fromMap(result);
}

/// Gets the SQL trigger under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlTriggerResult> getSqlResourceSqlTrigger(
  GetSqlResourceSqlTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlTriggerResult.fromMap(result);
}

/// Gets the SQL userDefinedFunction under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_sql_resource_sql_user_defined_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlResourceSqlUserDefinedFunctionResult> getSqlResourceSqlUserDefinedFunction(
  GetSqlResourceSqlUserDefinedFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlUserDefinedFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlResourceSqlUserDefinedFunctionResult.fromMap(result);
}

/// Gets the Tables under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_table_resource_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResourceTableResult> getTableResourceTable(
  GetTableResourceTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResourceTableResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Table Role Assignment with the given Id.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_table_resource_table_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResourceTableRoleAssignmentResult> getTableResourceTableRoleAssignment(
  GetTableResourceTableRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTableRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResourceTableRoleAssignmentResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Table Role Definition with the given Id.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_table_resource_table_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResourceTableRoleDefinitionResult> getTableResourceTableRoleDefinition(
  GetTableResourceTableRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTableRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResourceTableRoleDefinitionResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Throughput Pool
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_throughput_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetThroughputPoolResult> getThroughputPool(
  GetThroughputPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getThroughputPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThroughputPoolResult.fromMap(result);
}

/// Retrieves the properties of an existing Azure Cosmos DB Throughput Pool
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_get_throughput_pool_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetThroughputPoolAccountResult> getThroughputPoolAccount(
  GetThroughputPoolAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:getThroughputPoolAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThroughputPoolAccountResult.fromMap(result);
}

/// Lists the connection strings for the specified Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_list_database_account_connection_strings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDatabaseAccountConnectionStringsResult> listDatabaseAccountConnectionStrings(
  ListDatabaseAccountConnectionStringsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:listDatabaseAccountConnectionStrings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDatabaseAccountConnectionStringsResult.fromMap(result);
}

/// Lists the access keys for the specified Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_list_database_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDatabaseAccountKeysResult> listDatabaseAccountKeys(
  ListDatabaseAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:listDatabaseAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDatabaseAccountKeysResult.fromMap(result);
}

/// List mongo cluster connection strings. This includes the default connection string using SCRAM-SHA-256, as well as other connection strings supported by the cluster.
///
/// Uses Azure REST API version 2024-02-15-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_list_mongo_cluster_connection_strings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMongoClusterConnectionStringsResult> listMongoClusterConnectionStrings(
  ListMongoClusterConnectionStringsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:listMongoClusterConnectionStrings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMongoClusterConnectionStringsResult.fromMap(result);
}

/// Retrieves the connection info for the notebook workspace
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cosmosdb_list_notebook_workspace_connection_info_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNotebookWorkspaceConnectionInfoResult> listNotebookWorkspaceConnectionInfo(
  ListNotebookWorkspaceConnectionInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cosmosdb:listNotebookWorkspaceConnectionInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNotebookWorkspaceConnectionInfoResult.fromMap(result);
}
