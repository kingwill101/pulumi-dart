import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_compute_policy_args.dart';
import 'get_compute_policy_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'list_storage_account_sas_tokens_args.dart';
import 'list_storage_account_sas_tokens_result.dart';

/// Gets details of the specified Data Lake Analytics account.
///
/// Uses Azure REST API version 2019-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakeanalytics_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakeanalytics:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Gets the specified Data Lake Analytics compute policy.
///
/// Uses Azure REST API version 2019-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakeanalytics_get_compute_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComputePolicyResult> getComputePolicy(
  GetComputePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakeanalytics:getComputePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComputePolicyResult.fromMap(result);
}

/// Gets the specified Data Lake Analytics firewall rule.
///
/// Uses Azure REST API version 2019-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakeanalytics_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakeanalytics:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Gets the SAS token associated with the specified Data Lake Analytics and Azure Storage account and container combination.
///
/// Uses Azure REST API version 2019-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalakeanalytics_list_storage_account_sas_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStorageAccountSasTokensResult> listStorageAccountSasTokens(
  ListStorageAccountSasTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datalakeanalytics:listStorageAccountSasTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStorageAccountSasTokensResult.fromMap(result);
}
