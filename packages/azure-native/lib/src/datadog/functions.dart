import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_info_args.dart';
import 'get_billing_info_result.dart';
import 'get_monitor_args.dart';
import 'get_monitor_default_application_key_args.dart';
import 'get_monitor_default_application_key_result.dart';
import 'get_monitor_default_key_args.dart';
import 'get_monitor_default_key_result.dart';
import 'get_monitor_result.dart';
import 'get_monitored_subscription_args.dart';
import 'get_monitored_subscription_result.dart';
import 'list_monitor_api_keys_args.dart';
import 'list_monitor_api_keys_result.dart';
import 'list_monitor_hosts_args.dart';
import 'list_monitor_hosts_result.dart';
import 'list_monitor_linked_resources_args.dart';
import 'list_monitor_linked_resources_result.dart';
import 'list_monitor_monitored_resources_args.dart';
import 'list_monitor_monitored_resources_result.dart';

/// Marketplace Subscription and Organization details to which resource gets billed into.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_get_billing_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingInfoResult> getBillingInfo(
  GetBillingInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:getBillingInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingInfoResult.fromMap(result);
}

/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_get_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorResult> getMonitor(
  GetMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:getMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorResult.fromMap(result);
}

/// Get the default application key.
///
/// Uses Azure REST API version 2025-11-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_get_monitor_default_application_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorDefaultApplicationKeyResult> getMonitorDefaultApplicationKey(
  GetMonitorDefaultApplicationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:getMonitorDefaultApplicationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorDefaultApplicationKeyResult.fromMap(result);
}

/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_get_monitor_default_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorDefaultKeyResult> getMonitorDefaultKey(
  GetMonitorDefaultKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:getMonitorDefaultKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorDefaultKeyResult.fromMap(result);
}

/// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_get_monitored_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitoredSubscriptionResult> getMonitoredSubscription(
  GetMonitoredSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:getMonitoredSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitoredSubscriptionResult.fromMap(result);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_list_monitor_api_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMonitorApiKeysResult> listMonitorApiKeys(
  ListMonitorApiKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:listMonitorApiKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMonitorApiKeysResult.fromMap(result);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_list_monitor_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMonitorHostsResult> listMonitorHosts(
  ListMonitorHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:listMonitorHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMonitorHostsResult.fromMap(result);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_list_monitor_linked_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMonitorLinkedResourcesResult> listMonitorLinkedResources(
  ListMonitorLinkedResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:listMonitorLinkedResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMonitorLinkedResourcesResult.fromMap(result);
}

/// Response of a list operation.
///
/// Uses Azure REST API version 2023-10-20.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datadog_list_monitor_monitored_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMonitorMonitoredResourcesResult> listMonitorMonitoredResources(
  ListMonitorMonitoredResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datadog:listMonitorMonitoredResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMonitorMonitoredResourcesResult.fromMap(result);
}
