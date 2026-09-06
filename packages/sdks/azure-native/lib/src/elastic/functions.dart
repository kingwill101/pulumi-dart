import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_info_args.dart';
import 'get_billing_info_result.dart';
import 'get_monitor_args.dart';
import 'get_monitor_result.dart';
import 'get_monitored_subscription_args.dart';
import 'get_monitored_subscription_result.dart';
import 'get_open_aiargs.dart';
import 'get_open_airesult.dart';
import 'get_open_aistatus_args.dart';
import 'get_open_aistatus_result.dart';
import 'get_organization_api_key_args.dart';
import 'get_organization_api_key_result.dart';
import 'get_organization_elastic_to_azure_subscription_mapping_result.dart';
import 'get_tag_rule_args.dart';
import 'get_tag_rule_result.dart';
import 'list_all_traffic_filter_args.dart';
import 'list_all_traffic_filter_result.dart';
import 'list_connected_partner_resource_args.dart';
import 'list_connected_partner_resource_result.dart';
import 'list_deployment_info_args.dart';
import 'list_deployment_info_result.dart';
import 'list_list_associated_traffic_filter_args.dart';
import 'list_list_associated_traffic_filter_result.dart';
import 'list_monitored_resource_args.dart';
import 'list_monitored_resource_result.dart';
import 'list_upgradable_version_details_args.dart';
import 'list_upgradable_version_details_result.dart';
import 'list_vmhost_args.dart';
import 'list_vmhost_result.dart';

/// Marketplace Subscription and Organization details to which resource gets billed into.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_billing_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingInfoResult> getBillingInfo(
  GetBillingInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getBillingInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingInfoResult.fromMap(result);
}

pulumi.Output<GetBillingInfoResult> getBillingInfoOutput(
  GetBillingInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getBillingInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingInfoResult.fromMap);
}

/// Monitor resource.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorResult> getMonitor(
  GetMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorResult.fromMap(result);
}

pulumi.Output<GetMonitorResult> getMonitorOutput(
  GetMonitorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getMonitor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMonitorResult.fromMap);
}

/// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
///
/// Uses Azure REST API version 2025-01-15-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_monitored_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitoredSubscriptionResult> getMonitoredSubscription(
  GetMonitoredSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getMonitoredSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitoredSubscriptionResult.fromMap(result);
}

pulumi.Output<GetMonitoredSubscriptionResult> getMonitoredSubscriptionOutput(
  GetMonitoredSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getMonitoredSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMonitoredSubscriptionResult.fromMap);
}

/// Capture properties of Open AI resource Integration.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_open_aiargs_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenAIResult> getOpenAI(
  GetOpenAIArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getOpenAI',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenAIResult.fromMap(result);
}

pulumi.Output<GetOpenAIResult> getOpenAIOutput(
  GetOpenAIArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getOpenAI',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOpenAIResult.fromMap);
}

/// Status of the OpenAI Integration
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_open_aistatus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenAIStatusResult> getOpenAIStatus(
  GetOpenAIStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getOpenAIStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenAIStatusResult.fromMap(result);
}

pulumi.Output<GetOpenAIStatusResult> getOpenAIStatusOutput(
  GetOpenAIStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getOpenAIStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOpenAIStatusResult.fromMap);
}

/// Fetch User API Key from internal database, if it was generated and stored while creating the Elasticsearch Organization.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_organization_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationApiKeyResult> getOrganizationApiKey(
  GetOrganizationApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getOrganizationApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationApiKeyResult.fromMap(result);
}

pulumi.Output<GetOrganizationApiKeyResult> getOrganizationApiKeyOutput(
  GetOrganizationApiKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getOrganizationApiKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationApiKeyResult.fromMap);
}

/// Get Elastic Organization To Azure Subscription Mapping details for the logged-in user.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetOrganizationElasticToAzureSubscriptionMappingResult> getOrganizationElasticToAzureSubscriptionMapping(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getOrganizationElasticToAzureSubscriptionMapping',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationElasticToAzureSubscriptionMappingResult.fromMap(result);
}

pulumi.Output<GetOrganizationElasticToAzureSubscriptionMappingResult> getOrganizationElasticToAzureSubscriptionMappingOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getOrganizationElasticToAzureSubscriptionMapping',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetOrganizationElasticToAzureSubscriptionMappingResult.fromMap);
}

/// Capture logs and metrics of Azure resources based on ARM tags.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_get_tag_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagRuleResult> getTagRule(
  GetTagRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:getTagRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagRuleResult.fromMap(result);
}

pulumi.Output<GetTagRuleResult> getTagRuleOutput(
  GetTagRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:getTagRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagRuleResult.fromMap);
}

/// List of elastic traffic filters in the account
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_all_traffic_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAllTrafficFilterResult> listAllTrafficFilter(
  ListAllTrafficFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listAllTrafficFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAllTrafficFilterResult.fromMap(result);
}

pulumi.Output<ListAllTrafficFilterResult> listAllTrafficFilterOutput(
  ListAllTrafficFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listAllTrafficFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAllTrafficFilterResult.fromMap);
}

/// List of all active elastic deployments.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_connected_partner_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectedPartnerResourceResult> listConnectedPartnerResource(
  ListConnectedPartnerResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listConnectedPartnerResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectedPartnerResourceResult.fromMap(result);
}

pulumi.Output<ListConnectedPartnerResourceResult> listConnectedPartnerResourceOutput(
  ListConnectedPartnerResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listConnectedPartnerResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectedPartnerResourceResult.fromMap);
}

/// The properties of deployment in Elastic cloud corresponding to the Elastic monitor resource.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_deployment_info_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDeploymentInfoResult> listDeploymentInfo(
  ListDeploymentInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listDeploymentInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDeploymentInfoResult.fromMap(result);
}

pulumi.Output<ListDeploymentInfoResult> listDeploymentInfoOutput(
  ListDeploymentInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listDeploymentInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDeploymentInfoResult.fromMap);
}

/// List of elastic traffic filters in the account
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_list_associated_traffic_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListAssociatedTrafficFilterResult> listListAssociatedTrafficFilter(
  ListListAssociatedTrafficFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listListAssociatedTrafficFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListAssociatedTrafficFilterResult.fromMap(result);
}

pulumi.Output<ListListAssociatedTrafficFilterResult> listListAssociatedTrafficFilterOutput(
  ListListAssociatedTrafficFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listListAssociatedTrafficFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListListAssociatedTrafficFilterResult.fromMap);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_monitored_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMonitoredResourceResult> listMonitoredResource(
  ListMonitoredResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listMonitoredResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMonitoredResourceResult.fromMap(result);
}

pulumi.Output<ListMonitoredResourceResult> listMonitoredResourceOutput(
  ListMonitoredResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listMonitoredResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListMonitoredResourceResult.fromMap);
}

/// Stack Versions that this version can upgrade to
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_upgradable_version_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListUpgradableVersionDetailsResult> listUpgradableVersionDetails(
  ListUpgradableVersionDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listUpgradableVersionDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListUpgradableVersionDetailsResult.fromMap(result);
}

pulumi.Output<ListUpgradableVersionDetailsResult> listUpgradableVersionDetailsOutput(
  ListUpgradableVersionDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listUpgradableVersionDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListUpgradableVersionDetailsResult.fromMap);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-06-01, 2023-06-15-preview, 2023-07-01-preview, 2023-10-01-preview, 2023-11-01-preview, 2024-01-01-preview, 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-01-15-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_elastic_list_vmhost_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVMHostResult> listVMHost(
  ListVMHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:elastic:listVMHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVMHostResult.fromMap(result);
}

pulumi.Output<ListVMHostResult> listVMHostOutput(
  ListVMHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:elastic:listVMHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListVMHostResult.fromMap);
}
