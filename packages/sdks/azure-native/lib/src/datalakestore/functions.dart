import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_trusted_id_provider_args.dart';
import 'get_trusted_id_provider_result.dart';
import 'get_virtual_network_rule_args.dart';
import 'get_virtual_network_rule_result.dart';

/// Gets the specified Data Lake Store account.
///
/// Uses Azure REST API version 2016-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakestore_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakestore:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Gets the specified Data Lake Store firewall rule.
///
/// Uses Azure REST API version 2016-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakestore_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakestore:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Gets the specified Data Lake Store trusted identity provider.
///
/// Uses Azure REST API version 2016-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakestore_get_trusted_id_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrustedIdProviderResult> getTrustedIdProvider(
  GetTrustedIdProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakestore:getTrustedIdProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustedIdProviderResult.fromMap(result);
}

/// Gets the specified Data Lake Store virtual network rule.
///
/// Uses Azure REST API version 2016-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakestore_get_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkRuleResult> getVirtualNetworkRule(
  GetVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakestore:getVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkRuleResult.fromMap(result);
}
