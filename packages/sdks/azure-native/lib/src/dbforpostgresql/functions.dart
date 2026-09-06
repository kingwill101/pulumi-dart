import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_administrator_args.dart';
import 'get_administrator_result.dart';
import 'get_administrators_microsoft_entra_args.dart';
import 'get_administrators_microsoft_entra_result.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';
import 'get_backups_automatic_and_on_demand_args.dart';
import 'get_backups_automatic_and_on_demand_result.dart';
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_get_private_dns_zone_suffix_execute_result.dart';
import 'get_migration_args.dart';
import 'get_migration_result.dart';
import 'get_private_dns_zone_suffix_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_server_args.dart';
import 'get_server_group_cluster_args.dart';
import 'get_server_group_cluster_result.dart';
import 'get_server_group_firewall_rule_args.dart';
import 'get_server_group_firewall_rule_result.dart';
import 'get_server_group_private_endpoint_connection_args.dart';
import 'get_server_group_private_endpoint_connection_result.dart';
import 'get_server_group_role_args.dart';
import 'get_server_group_role_result.dart';
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
import 'get_single_server_server_security_alert_policy_args.dart';
import 'get_single_server_server_security_alert_policy_result.dart';
import 'get_single_server_virtual_network_rule_args.dart';
import 'get_single_server_virtual_network_rule_result.dart';
import 'get_virtual_endpoint_args.dart';
import 'get_virtual_endpoint_result.dart';

/// Gets information about a server administrator associated to a Microsoft Entra principal.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_administrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdministratorResult> getAdministrator(
  GetAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdministratorResult.fromMap(result);
}

pulumi.Output<GetAdministratorResult> getAdministratorOutput(
  GetAdministratorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getAdministrator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdministratorResult.fromMap);
}

/// Gets information about a server administrator associated to a Microsoft Entra principal.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_administrators_microsoft_entra_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdministratorsMicrosoftEntraResult> getAdministratorsMicrosoftEntra(
  GetAdministratorsMicrosoftEntraArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getAdministratorsMicrosoftEntra',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdministratorsMicrosoftEntraResult.fromMap(result);
}

pulumi.Output<GetAdministratorsMicrosoftEntraResult> getAdministratorsMicrosoftEntraOutput(
  GetAdministratorsMicrosoftEntraArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getAdministratorsMicrosoftEntra',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdministratorsMicrosoftEntraResult.fromMap);
}

/// Gets information of an on demand backup, given its name.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-03-01-preview, 2024-08-01, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

pulumi.Output<GetBackupResult> getBackupOutput(
  GetBackupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupResult.fromMap);
}

/// Gets information of an on demand backup, given its name.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_backups_automatic_and_on_demand_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupsAutomaticAndOnDemandResult> getBackupsAutomaticAndOnDemand(
  GetBackupsAutomaticAndOnDemandArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getBackupsAutomaticAndOnDemand',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupsAutomaticAndOnDemandResult.fromMap(result);
}

pulumi.Output<GetBackupsAutomaticAndOnDemandResult> getBackupsAutomaticAndOnDemandOutput(
  GetBackupsAutomaticAndOnDemandArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getBackupsAutomaticAndOnDemand',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupsAutomaticAndOnDemandResult.fromMap);
}

/// Gets information about a specific configuration (also known as server parameter) of a server.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}

pulumi.Output<GetConfigurationResult> getConfigurationOutput(
  GetConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationResult.fromMap);
}

/// Gets information about an existing database.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

pulumi.Output<GetDatabaseResult> getDatabaseOutput(
  GetDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseResult.fromMap);
}

/// Gets information about a firewall rule in a server.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetFirewallRuleResult> getFirewallRuleOutput(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallRuleResult.fromMap);
}

/// Gets the private DNS zone suffix.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetGetPrivateDnsZoneSuffixExecuteResult> getGetPrivateDnsZoneSuffixExecute(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getGetPrivateDnsZoneSuffixExecute',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGetPrivateDnsZoneSuffixExecuteResult.fromMap(result);
}

pulumi.Output<GetGetPrivateDnsZoneSuffixExecuteResult> getGetPrivateDnsZoneSuffixExecuteOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getGetPrivateDnsZoneSuffixExecute',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetGetPrivateDnsZoneSuffixExecuteResult.fromMap);
}

/// Gets information about a migration.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_migration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationResult> getMigration(
  GetMigrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getMigration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationResult.fromMap(result);
}

pulumi.Output<GetMigrationResult> getMigrationOutput(
  GetMigrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getMigration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationResult.fromMap);
}

/// Gets the private DNS zone suffix.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetPrivateDnsZoneSuffixResult> getPrivateDnsZoneSuffix(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getPrivateDnsZoneSuffix',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateDnsZoneSuffixResult.fromMap(result);
}

pulumi.Output<GetPrivateDnsZoneSuffixResult> getPrivateDnsZoneSuffixOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getPrivateDnsZoneSuffix',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetPrivateDnsZoneSuffixResult.fromMap);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getPrivateEndpointConnection',
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
    'azure-native:dbforpostgresql:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets information about an existing server.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}

pulumi.Output<GetServerResult> getServerOutput(
  GetServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerResult.fromMap);
}

/// Gets information about a cluster such as compute and storage configuration and cluster lifecycle metadata such as cluster creation date and time.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_server_group_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupClusterResult> getServerGroupCluster(
  GetServerGroupClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupClusterResult.fromMap(result);
}

pulumi.Output<GetServerGroupClusterResult> getServerGroupClusterOutput(
  GetServerGroupClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerGroupClusterResult.fromMap);
}

/// Gets information about a cluster firewall rule.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_server_group_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupFirewallRuleResult> getServerGroupFirewallRule(
  GetServerGroupFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetServerGroupFirewallRuleResult> getServerGroupFirewallRuleOutput(
  GetServerGroupFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerGroupFirewallRuleResult.fromMap);
}

/// Gets private endpoint connection.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_server_group_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupPrivateEndpointConnectionResult> getServerGroupPrivateEndpointConnection(
  GetServerGroupPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetServerGroupPrivateEndpointConnectionResult> getServerGroupPrivateEndpointConnectionOutput(
  GetServerGroupPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerGroupPrivateEndpointConnectionResult.fromMap);
}

/// Gets information about a cluster role.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_server_group_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupRoleResult> getServerGroupRole(
  GetServerGroupRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupRoleResult.fromMap(result);
}

pulumi.Output<GetServerGroupRoleResult> getServerGroupRoleOutput(
  GetServerGroupRoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getServerGroupRole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerGroupRoleResult.fromMap);
}

/// Gets information about a server.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerResult> getSingleServer(
  GetSingleServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerResult.fromMap(result);
}

pulumi.Output<GetSingleServerResult> getSingleServerOutput(
  GetSingleServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerResult.fromMap);
}

/// Gets information about a configuration of server.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerConfigurationResult> getSingleServerConfiguration(
  GetSingleServerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerConfigurationResult.fromMap(result);
}

pulumi.Output<GetSingleServerConfigurationResult> getSingleServerConfigurationOutput(
  GetSingleServerConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerConfigurationResult.fromMap);
}

/// Gets information about a database.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerDatabaseResult> getSingleServerDatabase(
  GetSingleServerDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerDatabaseResult.fromMap(result);
}

pulumi.Output<GetSingleServerDatabaseResult> getSingleServerDatabaseOutput(
  GetSingleServerDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerDatabaseResult.fromMap);
}

/// Gets information about a server firewall rule.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerFirewallRuleResult> getSingleServerFirewallRule(
  GetSingleServerFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetSingleServerFirewallRuleResult> getSingleServerFirewallRuleOutput(
  GetSingleServerFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerFirewallRuleResult.fromMap);
}

/// Gets information about a AAD server administrator.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_server_administrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerServerAdministratorResult> getSingleServerServerAdministrator(
  GetSingleServerServerAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerServerAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerServerAdministratorResult.fromMap(result);
}

pulumi.Output<GetSingleServerServerAdministratorResult> getSingleServerServerAdministratorOutput(
  GetSingleServerServerAdministratorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerServerAdministrator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerServerAdministratorResult.fromMap);
}

/// Get a server's security alert policy.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_server_security_alert_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerServerSecurityAlertPolicyResult> getSingleServerServerSecurityAlertPolicy(
  GetSingleServerServerSecurityAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerServerSecurityAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerServerSecurityAlertPolicyResult.fromMap(result);
}

pulumi.Output<GetSingleServerServerSecurityAlertPolicyResult> getSingleServerServerSecurityAlertPolicyOutput(
  GetSingleServerServerSecurityAlertPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerServerSecurityAlertPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerServerSecurityAlertPolicyResult.fromMap);
}

/// Gets a virtual network rule.
///
/// Uses Azure REST API version 2017-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_single_server_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSingleServerVirtualNetworkRuleResult> getSingleServerVirtualNetworkRule(
  GetSingleServerVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSingleServerVirtualNetworkRuleResult.fromMap(result);
}

pulumi.Output<GetSingleServerVirtualNetworkRuleResult> getSingleServerVirtualNetworkRuleOutput(
  GetSingleServerVirtualNetworkRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getSingleServerVirtualNetworkRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSingleServerVirtualNetworkRuleResult.fromMap);
}

/// Gets information about a pair of virtual endpoints.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbforpostgresql_get_virtual_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualEndpointResult> getVirtualEndpoint(
  GetVirtualEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getVirtualEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualEndpointResult.fromMap(result);
}

pulumi.Output<GetVirtualEndpointResult> getVirtualEndpointOutput(
  GetVirtualEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbforpostgresql:getVirtualEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualEndpointResult.fromMap);
}
