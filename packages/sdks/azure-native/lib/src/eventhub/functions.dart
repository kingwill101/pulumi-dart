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

pulumi.Output<GetApplicationGroupResult> getApplicationGroupOutput(
  GetApplicationGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getApplicationGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationGroupResult.fromMap);
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

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
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

pulumi.Output<GetConsumerGroupResult> getConsumerGroupOutput(
  GetConsumerGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getConsumerGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConsumerGroupResult.fromMap);
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

pulumi.Output<GetDisasterRecoveryConfigResult> getDisasterRecoveryConfigOutput(
  GetDisasterRecoveryConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getDisasterRecoveryConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDisasterRecoveryConfigResult.fromMap);
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

pulumi.Output<GetEventHubResult> getEventHubOutput(
  GetEventHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getEventHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventHubResult.fromMap);
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

pulumi.Output<GetEventHubAuthorizationRuleResult> getEventHubAuthorizationRuleOutput(
  GetEventHubAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getEventHubAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventHubAuthorizationRuleResult.fromMap);
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

pulumi.Output<GetNamespaceResult> getNamespaceOutput(
  GetNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
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

pulumi.Output<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRuleOutput(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceAuthorizationRuleResult.fromMap);
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

pulumi.Output<GetNamespaceIpFilterRuleResult> getNamespaceIpFilterRuleOutput(
  GetNamespaceIpFilterRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceIpFilterRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceIpFilterRuleResult.fromMap);
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

pulumi.Output<GetNamespaceNetworkRuleSetResult> getNamespaceNetworkRuleSetOutput(
  GetNamespaceNetworkRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceNetworkRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceNetworkRuleSetResult.fromMap);
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

pulumi.Output<GetNamespaceVirtualNetworkRuleResult> getNamespaceVirtualNetworkRuleOutput(
  GetNamespaceVirtualNetworkRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getNamespaceVirtualNetworkRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceVirtualNetworkRuleResult.fromMap);
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

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
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

pulumi.Output<GetSchemaRegistryResult> getSchemaRegistryOutput(
  GetSchemaRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:getSchemaRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaRegistryResult.fromMap);
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

pulumi.Output<ListDisasterRecoveryConfigKeysResult> listDisasterRecoveryConfigKeysOutput(
  ListDisasterRecoveryConfigKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:listDisasterRecoveryConfigKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDisasterRecoveryConfigKeysResult.fromMap);
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

pulumi.Output<ListEventHubKeysResult> listEventHubKeysOutput(
  ListEventHubKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:listEventHubKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEventHubKeysResult.fromMap);
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

pulumi.Output<ListNamespaceKeysResult> listNamespaceKeysOutput(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventhub:listNamespaceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceKeysResult.fromMap);
}
