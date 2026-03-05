import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_nodes_operation_args.dart';
import 'get_cache_nodes_operation_result.dart';
import 'get_enterprise_customer_operation_args.dart';
import 'get_enterprise_customer_operation_result.dart';
import 'get_enterprise_mcc_cache_nodes_operation_args.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_auto_update_history_args.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_auto_update_history_result.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_install_details_args.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_install_details_result.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_mcc_issue_details_history_args.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_mcc_issue_details_history_result.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_tls_certificate_history_args.dart';
import 'get_enterprise_mcc_cache_nodes_operation_cache_node_tls_certificate_history_result.dart';
import 'get_enterprise_mcc_cache_nodes_operation_result.dart';
import 'get_enterprise_mcc_customer_args.dart';
import 'get_enterprise_mcc_customer_result.dart';
import 'get_isp_cache_nodes_operation_args.dart';
import 'get_isp_cache_nodes_operation_bgp_cidrs_args.dart';
import 'get_isp_cache_nodes_operation_bgp_cidrs_result.dart';
import 'get_isp_cache_nodes_operation_cache_node_auto_update_history_args.dart';
import 'get_isp_cache_nodes_operation_cache_node_auto_update_history_result.dart';
import 'get_isp_cache_nodes_operation_cache_node_install_details_args.dart';
import 'get_isp_cache_nodes_operation_cache_node_install_details_result.dart';
import 'get_isp_cache_nodes_operation_cache_node_mcc_issue_details_history_args.dart';
import 'get_isp_cache_nodes_operation_cache_node_mcc_issue_details_history_result.dart';
import 'get_isp_cache_nodes_operation_result.dart';
import 'get_isp_customer_args.dart';
import 'get_isp_customer_result.dart';

/// Retrieves the properties of a cacheNodes
///
/// Uses Azure REST API version 2023-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_cache_nodes_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCacheNodesOperationResult> getCacheNodesOperation(
  GetCacheNodesOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getCacheNodesOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCacheNodesOperationResult.fromMap(result);
}

/// Retrieves the properties of a Enterprise customer
///
/// Uses Azure REST API version 2023-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_customer_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseCustomerOperationResult> getEnterpriseCustomerOperation(
  GetEnterpriseCustomerOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseCustomerOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseCustomerOperationResult.fromMap(result);
}

/// This api gets ispCacheNode resource information
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCacheNodesOperationResult>
getEnterpriseMccCacheNodesOperation(
  GetEnterpriseMccCacheNodesOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCacheNodesOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCacheNodesOperationResult.fromMap(result);
}

/// This api gets ispCacheNode resource auto update histrory information
///
/// Uses Azure REST API version 2024-11-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_auto_update_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult>
getEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistory(
  GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryResult.fromMap(
    result,
  );
}

/// This api gets secrets of the ispCacheNode resource install details
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_install_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCacheNodesOperationCacheNodeInstallDetailsResult>
getEnterpriseMccCacheNodesOperationCacheNodeInstallDetails(
  GetEnterpriseMccCacheNodesOperationCacheNodeInstallDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCacheNodesOperationCacheNodeInstallDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCacheNodesOperationCacheNodeInstallDetailsResult.fromMap(
    result,
  );
}

/// This api gets ispCacheNode resource issues details histrory information
///
/// Uses Azure REST API version 2024-11-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryResult>
getEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistory(
  GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryResult.fromMap(
    result,
  );
}

/// This api gets ispCacheNode resource tls certificate histrory information
///
/// Uses Azure REST API version 2024-11-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_tls_certificate_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult>
getEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistory(
  GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCacheNodesOperationCacheNodeTlsCertificateHistoryResult.fromMap(
    result,
  );
}

/// Gets the enterprise mcc customer resource information using this get call
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_enterprise_mcc_customer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseMccCustomerResult> getEnterpriseMccCustomer(
  GetEnterpriseMccCustomerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getEnterpriseMccCustomer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseMccCustomerResult.fromMap(result);
}

/// This api gets ispCacheNode resource information
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCacheNodesOperationResult> getIspCacheNodesOperation(
  GetIspCacheNodesOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCacheNodesOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCacheNodesOperationResult.fromMap(result);
}

/// This api gets ispCacheNode resource information
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_bgp_cidrs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCacheNodesOperationBgpCidrsResult>
getIspCacheNodesOperationBgpCidrs(
  GetIspCacheNodesOperationBgpCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCacheNodesOperationBgpCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCacheNodesOperationBgpCidrsResult.fromMap(result);
}

/// This api gets ispCacheNode resource auto update histrory information
///
/// Uses Azure REST API version 2024-11-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_auto_update_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryResult>
getIspCacheNodesOperationCacheNodeAutoUpdateHistory(
  GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCacheNodesOperationCacheNodeAutoUpdateHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryResult.fromMap(
    result,
  );
}

/// This api gets secrets of the ispCacheNode resource install details
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_install_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCacheNodesOperationCacheNodeInstallDetailsResult>
getIspCacheNodesOperationCacheNodeInstallDetails(
  GetIspCacheNodesOperationCacheNodeInstallDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCacheNodesOperationCacheNodeInstallDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCacheNodesOperationCacheNodeInstallDetailsResult.fromMap(result);
}

/// This api gets ispCacheNode resource issues details histrory information
///
/// Uses Azure REST API version 2024-11-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryResult>
getIspCacheNodesOperationCacheNodeMccIssueDetailsHistory(
  GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCacheNodesOperationCacheNodeMccIssueDetailsHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryResult.fromMap(
    result,
  );
}

/// Gets the ispCustomer resource information using this get call
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedcache_get_isp_customer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIspCustomerResult> getIspCustomer(
  GetIspCustomerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedcache:getIspCustomer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIspCustomerResult.fromMap(result);
}
