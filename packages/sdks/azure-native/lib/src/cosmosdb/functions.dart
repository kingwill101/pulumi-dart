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
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraClusterResult> getCassandraClusterOutput(
  GetCassandraClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraClusterResult.fromMap);
}

/// Get the properties of a managed Cassandra data center.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraDataCenterResult> getCassandraDataCenterOutput(
  GetCassandraDataCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraDataCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraDataCenterResult.fromMap);
}

/// Gets the Cassandra keyspaces under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraResourceCassandraKeyspaceResult> getCassandraResourceCassandraKeyspaceOutput(
  GetCassandraResourceCassandraKeyspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraKeyspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraResourceCassandraKeyspaceResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Cassandra Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraResourceCassandraRoleAssignmentResult> getCassandraResourceCassandraRoleAssignmentOutput(
  GetCassandraResourceCassandraRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraResourceCassandraRoleAssignmentResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Cassandra Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraResourceCassandraRoleDefinitionResult> getCassandraResourceCassandraRoleDefinitionOutput(
  GetCassandraResourceCassandraRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraResourceCassandraRoleDefinitionResult.fromMap);
}

/// Gets the Cassandra table under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraResourceCassandraTableResult> getCassandraResourceCassandraTableOutput(
  GetCassandraResourceCassandraTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraResourceCassandraTableResult.fromMap);
}

/// Gets the Cassandra view under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCassandraResourceCassandraViewResult> getCassandraResourceCassandraViewOutput(
  GetCassandraResourceCassandraViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getCassandraResourceCassandraView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCassandraResourceCassandraViewResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetDatabaseAccountResult> getDatabaseAccountOutput(
  GetDatabaseAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountResult.fromMap);
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

pulumi.Output<GetDatabaseAccountCassandraKeyspaceResult> getDatabaseAccountCassandraKeyspaceOutput(
  GetDatabaseAccountCassandraKeyspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountCassandraKeyspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountCassandraKeyspaceResult.fromMap);
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

pulumi.Output<GetDatabaseAccountCassandraTableResult> getDatabaseAccountCassandraTableOutput(
  GetDatabaseAccountCassandraTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountCassandraTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountCassandraTableResult.fromMap);
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

pulumi.Output<GetDatabaseAccountGremlinDatabaseResult> getDatabaseAccountGremlinDatabaseOutput(
  GetDatabaseAccountGremlinDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountGremlinDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountGremlinDatabaseResult.fromMap);
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

pulumi.Output<GetDatabaseAccountGremlinGraphResult> getDatabaseAccountGremlinGraphOutput(
  GetDatabaseAccountGremlinGraphArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountGremlinGraph',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountGremlinGraphResult.fromMap);
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

pulumi.Output<GetDatabaseAccountMongoDBCollectionResult> getDatabaseAccountMongoDBCollectionOutput(
  GetDatabaseAccountMongoDBCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountMongoDBCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountMongoDBCollectionResult.fromMap);
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

pulumi.Output<GetDatabaseAccountMongoDBDatabaseResult> getDatabaseAccountMongoDBDatabaseOutput(
  GetDatabaseAccountMongoDBDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountMongoDBDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountMongoDBDatabaseResult.fromMap);
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

pulumi.Output<GetDatabaseAccountSqlContainerResult> getDatabaseAccountSqlContainerOutput(
  GetDatabaseAccountSqlContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountSqlContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountSqlContainerResult.fromMap);
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

pulumi.Output<GetDatabaseAccountSqlDatabaseResult> getDatabaseAccountSqlDatabaseOutput(
  GetDatabaseAccountSqlDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountSqlDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountSqlDatabaseResult.fromMap);
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

pulumi.Output<GetDatabaseAccountTableResult> getDatabaseAccountTableOutput(
  GetDatabaseAccountTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getDatabaseAccountTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseAccountTableResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleet under a subscription
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFleetResult> getFleetOutput(
  GetFleetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB FleetAnalytics under a fleet
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFleetAnalyticResult> getFleetAnalyticOutput(
  GetFleetAnalyticArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetAnalytic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetAnalyticResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleetspace under a fleet
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFleetspaceResult> getFleetspaceOutput(
  GetFleetspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetspaceResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB fleetspace account under a fleetspace
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFleetspaceAccountResult> getFleetspaceAccountOutput(
  GetFleetspaceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getFleetspaceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetspaceAccountResult.fromMap);
}

/// Get the properties of a Garnet cache cluster.
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGarnetClusterResult> getGarnetClusterOutput(
  GetGarnetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGarnetCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGarnetClusterResult.fromMap);
}

/// Gets the Graph resource under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGraphResourceGraphResult> getGraphResourceGraphOutput(
  GetGraphResourceGraphArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGraphResourceGraph',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGraphResourceGraphResult.fromMap);
}

/// Gets the Gremlin databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGremlinResourceGremlinDatabaseResult> getGremlinResourceGremlinDatabaseOutput(
  GetGremlinResourceGremlinDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGremlinResourceGremlinDatabaseResult.fromMap);
}

/// Gets the Gremlin graph under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGremlinResourceGremlinGraphResult> getGremlinResourceGremlinGraphOutput(
  GetGremlinResourceGremlinGraphArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinGraph',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGremlinResourceGremlinGraphResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Gremlin Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGremlinResourceGremlinRoleAssignmentResult> getGremlinResourceGremlinRoleAssignmentOutput(
  GetGremlinResourceGremlinRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGremlinResourceGremlinRoleAssignmentResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Gremlin Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetGremlinResourceGremlinRoleDefinitionResult> getGremlinResourceGremlinRoleDefinitionOutput(
  GetGremlinResourceGremlinRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getGremlinResourceGremlinRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGremlinResourceGremlinRoleDefinitionResult.fromMap);
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

pulumi.Output<GetMongoClusterResult> getMongoClusterOutput(
  GetMongoClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoClusterResult.fromMap);
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

pulumi.Output<GetMongoClusterFirewallRuleResult> getMongoClusterFirewallRuleOutput(
  GetMongoClusterFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoClusterFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoClusterFirewallRuleResult.fromMap);
}

/// Gets the MongoDB collection under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoDBResourceMongoDBCollectionResult> getMongoDBResourceMongoDBCollectionOutput(
  GetMongoDBResourceMongoDBCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoDBCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoDBResourceMongoDBCollectionResult.fromMap);
}

/// Gets the MongoDB databases under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoDBResourceMongoDBDatabaseResult> getMongoDBResourceMongoDBDatabaseOutput(
  GetMongoDBResourceMongoDBDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoDBDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoDBResourceMongoDBDatabaseResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Mongo Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoDBResourceMongoRoleDefinitionResult> getMongoDBResourceMongoRoleDefinitionOutput(
  GetMongoDBResourceMongoRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoDBResourceMongoRoleDefinitionResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Mongo User Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoDBResourceMongoUserDefinitionResult> getMongoDBResourceMongoUserDefinitionOutput(
  GetMongoDBResourceMongoUserDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoDBResourceMongoUserDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoDBResourceMongoUserDefinitionResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB MongoMI Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoMIResourceMongoMIRoleAssignmentResult> getMongoMIResourceMongoMIRoleAssignmentOutput(
  GetMongoMIResourceMongoMIRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoMIResourceMongoMIRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoMIResourceMongoMIRoleAssignmentResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB MongoMI Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMongoMIResourceMongoMIRoleDefinitionResult> getMongoMIResourceMongoMIRoleDefinitionOutput(
  GetMongoMIResourceMongoMIRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getMongoMIResourceMongoMIRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMongoMIResourceMongoMIRoleDefinitionResult.fromMap);
}

/// Gets the notebook workspace for a Cosmos DB account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetNotebookWorkspaceResult> getNotebookWorkspaceOutput(
  GetNotebookWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getNotebookWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotebookWorkspaceResult.fromMap);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01-preview, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets the status of service.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-04-01-preview, 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// Gets the SQL container under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlContainerResult> getSqlResourceSqlContainerOutput(
  GetSqlResourceSqlContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlContainerResult.fromMap);
}

/// Gets the SQL database under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlDatabaseResult> getSqlResourceSqlDatabaseOutput(
  GetSqlResourceSqlDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlDatabaseResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB SQL Role Assignment with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlRoleAssignmentResult> getSqlResourceSqlRoleAssignmentOutput(
  GetSqlResourceSqlRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlRoleAssignmentResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB SQL Role Definition with the given Id.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlRoleDefinitionResult> getSqlResourceSqlRoleDefinitionOutput(
  GetSqlResourceSqlRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlRoleDefinitionResult.fromMap);
}

/// Gets the SQL storedProcedure under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlStoredProcedureResult> getSqlResourceSqlStoredProcedureOutput(
  GetSqlResourceSqlStoredProcedureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlStoredProcedure',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlStoredProcedureResult.fromMap);
}

/// Gets the SQL trigger under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlTriggerResult> getSqlResourceSqlTriggerOutput(
  GetSqlResourceSqlTriggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlTrigger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlTriggerResult.fromMap);
}

/// Gets the SQL userDefinedFunction under an existing Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetSqlResourceSqlUserDefinedFunctionResult> getSqlResourceSqlUserDefinedFunctionOutput(
  GetSqlResourceSqlUserDefinedFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getSqlResourceSqlUserDefinedFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlResourceSqlUserDefinedFunctionResult.fromMap);
}

/// Gets the Tables under an existing Azure Cosmos DB database account with the provided name.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetTableResourceTableResult> getTableResourceTableOutput(
  GetTableResourceTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResourceTableResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Table Role Assignment with the given Id.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetTableResourceTableRoleAssignmentResult> getTableResourceTableRoleAssignmentOutput(
  GetTableResourceTableRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTableRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResourceTableRoleAssignmentResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Table Role Definition with the given Id.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetTableResourceTableRoleDefinitionResult> getTableResourceTableRoleDefinitionOutput(
  GetTableResourceTableRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getTableResourceTableRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResourceTableRoleDefinitionResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Throughput Pool
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetThroughputPoolResult> getThroughputPoolOutput(
  GetThroughputPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getThroughputPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetThroughputPoolResult.fromMap);
}

/// Retrieves the properties of an existing Azure Cosmos DB Throughput Pool
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetThroughputPoolAccountResult> getThroughputPoolAccountOutput(
  GetThroughputPoolAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:getThroughputPoolAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetThroughputPoolAccountResult.fromMap);
}

/// Lists the connection strings for the specified Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListDatabaseAccountConnectionStringsResult> listDatabaseAccountConnectionStringsOutput(
  ListDatabaseAccountConnectionStringsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:listDatabaseAccountConnectionStrings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDatabaseAccountConnectionStringsResult.fromMap);
}

/// Lists the access keys for the specified Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListDatabaseAccountKeysResult> listDatabaseAccountKeysOutput(
  ListDatabaseAccountKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:listDatabaseAccountKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDatabaseAccountKeysResult.fromMap);
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

pulumi.Output<ListMongoClusterConnectionStringsResult> listMongoClusterConnectionStringsOutput(
  ListMongoClusterConnectionStringsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:listMongoClusterConnectionStrings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListMongoClusterConnectionStringsResult.fromMap);
}

/// Retrieves the connection info for the notebook workspace
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListNotebookWorkspaceConnectionInfoResult> listNotebookWorkspaceConnectionInfoOutput(
  ListNotebookWorkspaceConnectionInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cosmosdb:listNotebookWorkspaceConnectionInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNotebookWorkspaceConnectionInfoResult.fromMap);
}
