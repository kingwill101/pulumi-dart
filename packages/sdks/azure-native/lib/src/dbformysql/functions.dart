import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_adadministrator_args.dart';
import 'get_azure_adadministrator_result.dart';
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_get_private_dns_zone_suffix_execute_result.dart';
import 'get_long_running_backup_args.dart';
import 'get_long_running_backup_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_server_args.dart';
import 'get_server_result.dart';
import 'get_single_server_args.dart';
import 'get_single_server_configuration_args.dart';
import 'get_single_server_configuration_result.dart';
import 'get_single_server_database_args.dart';
import 'get_single_server_database_result.dart';
import 'get_single_server_firewall_rule_args.dart';
import 'get_single_server_firewall_rule_result.dart';
import 'get_single_server_result.dart';
import 'get_single_server_server_administrator_args.dart';
import 'get_single_server_server_administrator_result.dart';
import 'get_single_server_virtual_network_rule_args.dart';
import 'get_single_server_virtual_network_rule_result.dart';

/// Gets information about an azure ad administrator.
///
/// Uses Azure REST API version 2023-12-30.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_azure_adadministrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureADAdministratorResult> getAzureADAdministrator(
  GetAzureADAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getAzureADAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureADAdministratorResult.fromMap(result);
}

/// Gets information about a configuration of server.
///
/// Uses Azure REST API version 2023-12-30.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}

/// Gets information about a database.
///
/// Uses Azure REST API version 2023-12-30.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets information about a server firewall rule.
///
/// Uses Azure REST API version 2023-12-30.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Get private DNS zone suffix in the cloud.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2022-01-01, 2022-09-30-preview, 2023-06-01-preview, 2023-06-30, 2023-12-01-preview, 2023-12-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetGetPrivateDnsZoneSuffixExecuteResult> getGetPrivateDnsZoneSuffixExecute(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getGetPrivateDnsZoneSuffixExecute',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGetPrivateDnsZoneSuffixExecuteResult.fromMap(result);
}

/// Get backup for a given server.
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_long_running_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLongRunningBackupResult> getLongRunningBackup(
  GetLongRunningBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getLongRunningBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLongRunningBackupResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2022-09-30-preview, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets information about a server.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2022-01-01, 2022-09-30-preview, 2023-06-01-preview, 2023-06-30, 2023-10-01-preview, 2023-12-01-preview, 2023-12-30, 2024-06-01-preview, 2024-10-01-preview, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}

/// Gets information about a server.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerResult> getSingleServer(
  GetSingleServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerResult.fromMap(result);
}

/// Gets information about a configuration of server.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerConfigurationResult> getSingleServerConfiguration(
  GetSingleServerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerConfigurationResult.fromMap(result);
}

/// Gets information about a database.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerDatabaseResult> getSingleServerDatabase(
  GetSingleServerDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServerDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerDatabaseResult.fromMap(result);
}

/// Gets information about a server firewall rule.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerFirewallRuleResult> getSingleServerFirewallRule(
  GetSingleServerFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServerFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerFirewallRuleResult.fromMap(result);
}

/// Gets information about a AAD server administrator.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_server_administrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerServerAdministratorResult> getSingleServerServerAdministrator(
  GetSingleServerServerAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServerServerAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerServerAdministratorResult.fromMap(result);
}

/// Gets a virtual network rule.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformysql_get_single_server_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerVirtualNetworkRuleResult> getSingleServerVirtualNetworkRule(
  GetSingleServerVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformysql:getSingleServerVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerVirtualNetworkRuleResult.fromMap(result);
}
