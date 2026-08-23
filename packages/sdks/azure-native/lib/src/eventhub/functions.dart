import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_group_args.dart';
import 'get_application_group_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_consumer_group_args.dart';
import 'get_consumer_group_result.dart';
import 'get_disaster_recovery_config_args.dart';
import 'get_disaster_recovery_config_result.dart';
import 'get_event_hub_args.dart';
import 'get_event_hub_authorization_rule_args.dart';
import 'get_event_hub_authorization_rule_result.dart';
import 'get_event_hub_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_ip_filter_rule_args.dart';
import 'get_namespace_ip_filter_rule_result.dart';
import 'get_namespace_network_rule_set_args.dart';
import 'get_namespace_network_rule_set_result.dart';
import 'get_namespace_result.dart';
import 'get_namespace_virtual_network_rule_args.dart';
import 'get_namespace_virtual_network_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_schema_registry_args.dart';
import 'get_schema_registry_result.dart';
import 'list_disaster_recovery_config_keys_args.dart';
import 'list_disaster_recovery_config_keys_result.dart';
import 'list_event_hub_keys_args.dart';
import 'list_event_hub_keys_result.dart';
import 'list_namespace_keys_args.dart';
import 'list_namespace_keys_result.dart';

/// Gets an ApplicationGroup for a Namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_application_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGroupResult> getApplicationGroup(
  GetApplicationGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getApplicationGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGroupResult.fromMap(result);
}

/// Gets the resource description of the specified Event Hubs Cluster.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets a description for the specified consumer group.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_consumer_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerGroupResult> getConsumerGroup(
  GetConsumerGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getConsumerGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerGroupResult.fromMap(result);
}

/// Retrieves Alias(Disaster Recovery configuration) for primary or secondary namespace
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_disaster_recovery_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDisasterRecoveryConfigResult> getDisasterRecoveryConfig(
  GetDisasterRecoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getDisasterRecoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDisasterRecoveryConfigResult.fromMap(result);
}

/// Gets an Event Hubs description for the specified Event Hub.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_event_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubResult> getEventHub(
  GetEventHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getEventHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubResult.fromMap(result);
}

/// Gets an AuthorizationRule for an Event Hub by rule name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_event_hub_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubAuthorizationRuleResult> getEventHubAuthorizationRule(
  GetEventHubAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getEventHubAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubAuthorizationRuleResult.fromMap(result);
}

/// Gets the description of the specified namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Gets an AuthorizationRule for a Namespace by rule name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAuthorizationRuleResult.fromMap(result);
}

/// Gets an IpFilterRule for a Namespace by rule name.
///
/// Uses Azure REST API version 2018-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_ip_filter_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceIpFilterRuleResult> getNamespaceIpFilterRule(
  GetNamespaceIpFilterRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceIpFilterRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIpFilterRuleResult.fromMap(result);
}

/// Gets NetworkRuleSet for a Namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_network_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceNetworkRuleSetResult> getNamespaceNetworkRuleSet(
  GetNamespaceNetworkRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceNetworkRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceNetworkRuleSetResult.fromMap(result);
}

/// Gets an VirtualNetworkRule for a Namespace by rule name.
///
/// Uses Azure REST API version 2018-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_namespace_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceVirtualNetworkRuleResult> getNamespaceVirtualNetworkRule(
  GetNamespaceVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceVirtualNetworkRuleResult.fromMap(result);
}

/// Gets a description for the specified Private Endpoint Connection name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the details of an EventHub schema group.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_get_schema_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaRegistryResult> getSchemaRegistry(
  GetSchemaRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:getSchemaRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaRegistryResult.fromMap(result);
}

/// Gets the primary and secondary connection strings for the Namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_list_disaster_recovery_config_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDisasterRecoveryConfigKeysResult> listDisasterRecoveryConfigKeys(
  ListDisasterRecoveryConfigKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:listDisasterRecoveryConfigKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDisasterRecoveryConfigKeysResult.fromMap(result);
}

/// Gets the ACS and SAS connection strings for the Event Hub.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_list_event_hub_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEventHubKeysResult> listEventHubKeys(
  ListEventHubKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:listEventHubKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEventHubKeysResult.fromMap(result);
}

/// Gets the primary and secondary connection strings for the Namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventhub_list_namespace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceKeysResult> listNamespaceKeys(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventhub:listNamespaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceKeysResult.fromMap(result);
}
