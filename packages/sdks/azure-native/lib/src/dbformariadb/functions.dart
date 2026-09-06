import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_server_args.dart';
import 'get_server_result.dart';
import 'get_virtual_network_rule_args.dart';
import 'get_virtual_network_rule_result.dart';

/// Gets information about a configuration of server.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getConfiguration',
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
    'azure-native:dbformariadb:getConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationResult.fromMap);
}

/// Gets information about a database.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getDatabase',
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
    'azure-native:dbformariadb:getDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseResult.fromMap);
}

/// Gets information about a server firewall rule.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getFirewallRule',
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
    'azure-native:dbformariadb:getFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallRuleResult.fromMap);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getPrivateEndpointConnection',
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
    'azure-native:dbformariadb:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets information about a server.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getServer',
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
    'azure-native:dbformariadb:getServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerResult.fromMap);
}

/// Gets a virtual network rule.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_dbformariadb_get_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkRuleResult> getVirtualNetworkRule(
  GetVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dbformariadb:getVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkRuleResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkRuleResult> getVirtualNetworkRuleOutput(
  GetVirtualNetworkRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:dbformariadb:getVirtualNetworkRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkRuleResult.fromMap);
}
