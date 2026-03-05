import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_object_global_rulestack_args.dart';
import 'get_certificate_object_global_rulestack_result.dart';
import 'get_certificate_object_local_rulestack_args.dart';
import 'get_certificate_object_local_rulestack_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_global_rulestack_args.dart';
import 'get_firewall_global_rulestack_result.dart';
import 'get_firewall_log_profile_args.dart';
import 'get_firewall_log_profile_result.dart';
import 'get_firewall_result.dart';
import 'get_firewall_support_info_args.dart';
import 'get_firewall_support_info_result.dart';
import 'get_fqdn_list_global_rulestack_args.dart';
import 'get_fqdn_list_global_rulestack_result.dart';
import 'get_fqdn_list_local_rulestack_args.dart';
import 'get_fqdn_list_local_rulestack_result.dart';
import 'get_global_rulestack_args.dart';
import 'get_global_rulestack_change_log_args.dart';
import 'get_global_rulestack_change_log_result.dart';
import 'get_global_rulestack_result.dart';
import 'get_local_rule_args.dart';
import 'get_local_rule_counters_args.dart';
import 'get_local_rule_counters_result.dart';
import 'get_local_rule_result.dart';
import 'get_local_rulestack_args.dart';
import 'get_local_rulestack_change_log_args.dart';
import 'get_local_rulestack_change_log_result.dart';
import 'get_local_rulestack_result.dart';
import 'get_local_rulestack_support_info_args.dart';
import 'get_local_rulestack_support_info_result.dart';
import 'get_post_rule_args.dart';
import 'get_post_rule_counters_args.dart';
import 'get_post_rule_counters_result.dart';
import 'get_post_rule_result.dart';
import 'get_pre_rule_args.dart';
import 'get_pre_rule_counters_args.dart';
import 'get_pre_rule_counters_result.dart';
import 'get_pre_rule_result.dart';
import 'get_prefix_list_global_rulestack_args.dart';
import 'get_prefix_list_global_rulestack_result.dart';
import 'get_prefix_list_local_rulestack_args.dart';
import 'get_prefix_list_local_rulestack_result.dart';
import 'list_global_rulestack_advanced_security_objects_args.dart';
import 'list_global_rulestack_advanced_security_objects_result.dart';
import 'list_global_rulestack_app_ids_args.dart';
import 'list_global_rulestack_app_ids_result.dart';
import 'list_global_rulestack_countries_args.dart';
import 'list_global_rulestack_countries_result.dart';
import 'list_global_rulestack_firewalls_args.dart';
import 'list_global_rulestack_firewalls_result.dart';
import 'list_global_rulestack_predefined_url_categories_args.dart';
import 'list_global_rulestack_predefined_url_categories_result.dart';
import 'list_global_rulestack_security_services_args.dart';
import 'list_global_rulestack_security_services_result.dart';
import 'list_local_rulestack_advanced_security_objects_args.dart';
import 'list_local_rulestack_advanced_security_objects_result.dart';
import 'list_local_rulestack_app_ids_args.dart';
import 'list_local_rulestack_app_ids_result.dart';
import 'list_local_rulestack_countries_args.dart';
import 'list_local_rulestack_countries_result.dart';
import 'list_local_rulestack_firewalls_args.dart';
import 'list_local_rulestack_firewalls_result.dart';
import 'list_local_rulestack_predefined_url_categories_args.dart';
import 'list_local_rulestack_predefined_url_categories_result.dart';
import 'list_local_rulestack_security_services_args.dart';
import 'list_local_rulestack_security_services_result.dart';
import 'list_palo_alto_networks_cloudngfw_operation_cloud_manager_tenants_result.dart';
import 'list_palo_alto_networks_cloudngfw_operation_product_serial_number_status_result.dart';
import 'list_palo_alto_networks_cloudngfw_operation_support_info_result.dart';

/// Get a CertificateObjectGlobalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_certificate_object_global_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateObjectGlobalRulestackResult> getCertificateObjectGlobalRulestack(
  GetCertificateObjectGlobalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getCertificateObjectGlobalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateObjectGlobalRulestackResult.fromMap(result);
}

/// Get a CertificateObjectLocalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_certificate_object_local_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateObjectLocalRulestackResult> getCertificateObjectLocalRulestack(
  GetCertificateObjectLocalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getCertificateObjectLocalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateObjectLocalRulestackResult.fromMap(result);
}

/// Get a FirewallResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// Get Global Rulestack associated with the Firewall
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_firewall_global_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallGlobalRulestackResult> getFirewallGlobalRulestack(
  GetFirewallGlobalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFirewallGlobalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallGlobalRulestackResult.fromMap(result);
}

/// Log Profile for Firewall
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_firewall_log_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallLogProfileResult> getFirewallLogProfile(
  GetFirewallLogProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFirewallLogProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallLogProfileResult.fromMap(result);
}

/// support info for firewall.
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_firewall_support_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallSupportInfoResult> getFirewallSupportInfo(
  GetFirewallSupportInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFirewallSupportInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallSupportInfoResult.fromMap(result);
}

/// Get a FqdnListGlobalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_fqdn_list_global_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFqdnListGlobalRulestackResult> getFqdnListGlobalRulestack(
  GetFqdnListGlobalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFqdnListGlobalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFqdnListGlobalRulestackResult.fromMap(result);
}

/// Get a FqdnListLocalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_fqdn_list_local_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFqdnListLocalRulestackResult> getFqdnListLocalRulestack(
  GetFqdnListLocalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getFqdnListLocalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFqdnListLocalRulestackResult.fromMap(result);
}

/// Get a GlobalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_global_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalRulestackResult> getGlobalRulestack(
  GetGlobalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getGlobalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalRulestackResult.fromMap(result);
}

/// Get changelog
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_global_rulestack_change_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalRulestackChangeLogResult> getGlobalRulestackChangeLog(
  GetGlobalRulestackChangeLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getGlobalRulestackChangeLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalRulestackChangeLogResult.fromMap(result);
}

/// Get a LocalRulesResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_local_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalRuleResult> getLocalRule(
  GetLocalRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getLocalRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalRuleResult.fromMap(result);
}

/// Get counters
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_local_rule_counters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalRuleCountersResult> getLocalRuleCounters(
  GetLocalRuleCountersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getLocalRuleCounters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalRuleCountersResult.fromMap(result);
}

/// Get a LocalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_local_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalRulestackResult> getLocalRulestack(
  GetLocalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getLocalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalRulestackResult.fromMap(result);
}

/// Get changelog
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_local_rulestack_change_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalRulestackChangeLogResult> getLocalRulestackChangeLog(
  GetLocalRulestackChangeLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getLocalRulestackChangeLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalRulestackChangeLogResult.fromMap(result);
}

/// support info for rulestack.
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_local_rulestack_support_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalRulestackSupportInfoResult> getLocalRulestackSupportInfo(
  GetLocalRulestackSupportInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getLocalRulestackSupportInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalRulestackSupportInfoResult.fromMap(result);
}

/// Get a PostRulesResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_post_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPostRuleResult> getPostRule(
  GetPostRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPostRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPostRuleResult.fromMap(result);
}

/// Get counters
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_post_rule_counters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPostRuleCountersResult> getPostRuleCounters(
  GetPostRuleCountersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPostRuleCounters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPostRuleCountersResult.fromMap(result);
}

/// Get a PreRulesResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_pre_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPreRuleResult> getPreRule(
  GetPreRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPreRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPreRuleResult.fromMap(result);
}

/// Get counters
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_pre_rule_counters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPreRuleCountersResult> getPreRuleCounters(
  GetPreRuleCountersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPreRuleCounters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPreRuleCountersResult.fromMap(result);
}

/// Get a PrefixListGlobalRulestackResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_prefix_list_global_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrefixListGlobalRulestackResult> getPrefixListGlobalRulestack(
  GetPrefixListGlobalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPrefixListGlobalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixListGlobalRulestackResult.fromMap(result);
}

/// Get a PrefixListResource
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_get_prefix_list_local_rulestack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrefixListLocalRulestackResult> getPrefixListLocalRulestack(
  GetPrefixListLocalRulestackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:getPrefixListLocalRulestack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixListLocalRulestackResult.fromMap(result);
}

/// Get the list of advanced security objects
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_advanced_security_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackAdvancedSecurityObjectsResult> listGlobalRulestackAdvancedSecurityObjects(
  ListGlobalRulestackAdvancedSecurityObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackAdvancedSecurityObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackAdvancedSecurityObjectsResult.fromMap(result);
}

/// List of AppIds for GlobalRulestack ApiVersion
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_app_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackAppIdsResult> listGlobalRulestackAppIds(
  ListGlobalRulestackAppIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackAppIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackAppIdsResult.fromMap(result);
}

/// List of countries for Rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_countries_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackCountriesResult> listGlobalRulestackCountries(
  ListGlobalRulestackCountriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackCountries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackCountriesResult.fromMap(result);
}

/// List of Firewalls associated with Rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackFirewallsResult> listGlobalRulestackFirewalls(
  ListGlobalRulestackFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackFirewallsResult.fromMap(result);
}

/// List predefined URL categories for rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_predefined_url_categories_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackPredefinedUrlCategoriesResult> listGlobalRulestackPredefinedUrlCategories(
  ListGlobalRulestackPredefinedUrlCategoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackPredefinedUrlCategories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackPredefinedUrlCategoriesResult.fromMap(result);
}

/// List the security services for rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_global_rulestack_security_services_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGlobalRulestackSecurityServicesResult> listGlobalRulestackSecurityServices(
  ListGlobalRulestackSecurityServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listGlobalRulestackSecurityServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGlobalRulestackSecurityServicesResult.fromMap(result);
}

/// Get the list of advanced security objects
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_advanced_security_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackAdvancedSecurityObjectsResult> listLocalRulestackAdvancedSecurityObjects(
  ListLocalRulestackAdvancedSecurityObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackAdvancedSecurityObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackAdvancedSecurityObjectsResult.fromMap(result);
}

/// List of AppIds for LocalRulestack ApiVersion
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_app_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackAppIdsResult> listLocalRulestackAppIds(
  ListLocalRulestackAppIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackAppIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackAppIdsResult.fromMap(result);
}

/// List of countries for Rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_countries_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackCountriesResult> listLocalRulestackCountries(
  ListLocalRulestackCountriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackCountries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackCountriesResult.fromMap(result);
}

/// List of Firewalls associated with Rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackFirewallsResult> listLocalRulestackFirewalls(
  ListLocalRulestackFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackFirewallsResult.fromMap(result);
}

/// List predefined URL categories for rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_predefined_url_categories_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackPredefinedUrlCategoriesResult> listLocalRulestackPredefinedUrlCategories(
  ListLocalRulestackPredefinedUrlCategoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackPredefinedUrlCategories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackPredefinedUrlCategoriesResult.fromMap(result);
}

/// List the security services for rulestack
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudngfw_list_local_rulestack_security_services_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalRulestackSecurityServicesResult> listLocalRulestackSecurityServices(
  ListLocalRulestackSecurityServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listLocalRulestackSecurityServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalRulestackSecurityServicesResult.fromMap(result);
}

/// Cloud Manager Tenant
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult> listPaloAltoNetworksCloudngfwOperationCloudManagerTenants(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listPaloAltoNetworksCloudngfwOperationCloudManagerTenants',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult.fromMap(result);
}

/// Product serial and status for the service
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult> listPaloAltoNetworksCloudngfwOperationProductSerialNumberStatus(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listPaloAltoNetworksCloudngfwOperationProductSerialNumberStatus',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult.fromMap(result);
}

/// Support information for the service
///
/// Uses Azure REST API version 2025-05-23.
///
/// Other available API versions: 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPaloAltoNetworksCloudngfwOperationSupportInfoResult> listPaloAltoNetworksCloudngfwOperationSupportInfo(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudngfw:listPaloAltoNetworksCloudngfwOperationSupportInfo',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPaloAltoNetworksCloudngfwOperationSupportInfoResult.fromMap(result);
}
