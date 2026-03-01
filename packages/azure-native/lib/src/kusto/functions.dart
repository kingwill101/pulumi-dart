import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attached_database_configuration_args.dart';
import 'get_attached_database_configuration_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_principal_assignment_args.dart';
import 'get_cluster_principal_assignment_result.dart';
import 'get_cluster_result.dart';
import 'get_cosmos_db_data_connection_args.dart';
import 'get_cosmos_db_data_connection_result.dart';
import 'get_database_principal_assignment_args.dart';
import 'get_database_principal_assignment_result.dart';
import 'get_event_grid_data_connection_args.dart';
import 'get_event_grid_data_connection_result.dart';
import 'get_event_hub_connection_args.dart';
import 'get_event_hub_connection_result.dart';
import 'get_event_hub_data_connection_args.dart';
import 'get_event_hub_data_connection_result.dart';
import 'get_iot_hub_data_connection_args.dart';
import 'get_iot_hub_data_connection_result.dart';
import 'get_managed_private_endpoint_args.dart';
import 'get_managed_private_endpoint_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_read_only_following_database_args.dart';
import 'get_read_only_following_database_result.dart';
import 'get_read_write_database_args.dart';
import 'get_read_write_database_result.dart';
import 'get_sandbox_custom_image_args.dart';
import 'get_sandbox_custom_image_result.dart';
import 'get_script_args.dart';
import 'get_script_result.dart';
import 'list_cluster_callout_policies_args.dart';
import 'list_cluster_callout_policies_result.dart';
import 'list_cluster_follower_databases_args.dart';
import 'list_cluster_follower_databases_result.dart';
import 'list_cluster_language_extensions_args.dart';
import 'list_cluster_language_extensions_result.dart';
import 'list_database_principals_args.dart';
import 'list_database_principals_result.dart';

/// Returns an attached database configuration.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_attached_database_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachedDatabaseConfigurationResult> getAttachedDatabaseConfiguration(
  GetAttachedDatabaseConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getAttachedDatabaseConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedDatabaseConfigurationResult.fromMap(result);
}

/// Gets a Kusto cluster.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2018-09-07-preview, 2019-01-21, 2019-05-15, 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets a Kusto cluster principalAssignment.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_cluster_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterPrincipalAssignmentResult> getClusterPrincipalAssignment(
  GetClusterPrincipalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getClusterPrincipalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterPrincipalAssignmentResult.fromMap(result);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_cosmos_db_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCosmosDbDataConnectionResult> getCosmosDbDataConnection(
  GetCosmosDbDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getCosmosDbDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCosmosDbDataConnectionResult.fromMap(result);
}

/// Gets a Kusto cluster database principalAssignment.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_database_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasePrincipalAssignmentResult> getDatabasePrincipalAssignment(
  GetDatabasePrincipalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getDatabasePrincipalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasePrincipalAssignmentResult.fromMap(result);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_event_grid_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventGridDataConnectionResult> getEventGridDataConnection(
  GetEventGridDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getEventGridDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventGridDataConnectionResult.fromMap(result);
}

/// Returns an Event Hub connection.
///
/// Uses Azure REST API version 2018-09-07-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_event_hub_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubConnectionResult> getEventHubConnection(
  GetEventHubConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getEventHubConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubConnectionResult.fromMap(result);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_event_hub_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubDataConnectionResult> getEventHubDataConnection(
  GetEventHubDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getEventHubDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubDataConnectionResult.fromMap(result);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_iot_hub_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotHubDataConnectionResult> getIotHubDataConnection(
  GetIotHubDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getIotHubDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotHubDataConnectionResult.fromMap(result);
}

/// Gets a managed private endpoint.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_managed_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedPrivateEndpointResult> getManagedPrivateEndpoint(
  GetManagedPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getManagedPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrivateEndpointResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Returns a database.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_read_only_following_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReadOnlyFollowingDatabaseResult> getReadOnlyFollowingDatabase(
  GetReadOnlyFollowingDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getReadOnlyFollowingDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReadOnlyFollowingDatabaseResult.fromMap(result);
}

/// Returns a database.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_read_write_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReadWriteDatabaseResult> getReadWriteDatabase(
  GetReadWriteDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getReadWriteDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReadWriteDatabaseResult.fromMap(result);
}

/// Returns a sandbox custom image
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_sandbox_custom_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSandboxCustomImageResult> getSandboxCustomImage(
  GetSandboxCustomImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getSandboxCustomImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSandboxCustomImageResult.fromMap(result);
}

/// Gets a Kusto cluster database script.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScriptResult> getScript(
  GetScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:getScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScriptResult.fromMap(result);
}

/// Returns the allowed callout policies for the specified service.
///
/// Uses Azure REST API version 2024-04-13.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_list_cluster_callout_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClusterCalloutPoliciesResult> listClusterCalloutPolicies(
  ListClusterCalloutPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:listClusterCalloutPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClusterCalloutPoliciesResult.fromMap(result);
}

/// Returns a list of databases that are owned by this cluster and were followed by another cluster.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_list_cluster_follower_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClusterFollowerDatabasesResult> listClusterFollowerDatabases(
  ListClusterFollowerDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:listClusterFollowerDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClusterFollowerDatabasesResult.fromMap(result);
}

/// Returns a list of language extensions that can run within KQL queries.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_list_cluster_language_extensions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClusterLanguageExtensionsResult> listClusterLanguageExtensions(
  ListClusterLanguageExtensionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:listClusterLanguageExtensions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClusterLanguageExtensionsResult.fromMap(result);
}

/// Returns a list of database principals of the given Kusto cluster and database.
///
/// Uses Azure REST API version 2024-04-13.
///
/// Other available API versions: 2018-09-07-preview, 2019-01-21, 2019-05-15, 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_list_database_principals_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDatabasePrincipalsResult> listDatabasePrincipals(
  ListDatabasePrincipalsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kusto:listDatabasePrincipals',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDatabasePrincipalsResult.fromMap(result);
}
