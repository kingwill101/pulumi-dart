import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_certificate_args.dart';
import 'get_ca_certificate_result.dart';
import 'get_channel_args.dart';
import 'get_channel_full_url_args.dart';
import 'get_channel_full_url_result.dart';
import 'get_channel_result.dart';
import 'get_client_args.dart';
import 'get_client_group_args.dart';
import 'get_client_group_result.dart';
import 'get_client_result.dart';
import 'get_domain_args.dart';
import 'get_domain_event_subscription_args.dart';
import 'get_domain_event_subscription_delivery_attributes_args.dart';
import 'get_domain_event_subscription_delivery_attributes_result.dart';
import 'get_domain_event_subscription_full_url_args.dart';
import 'get_domain_event_subscription_full_url_result.dart';
import 'get_domain_event_subscription_result.dart';
import 'get_domain_result.dart';
import 'get_domain_topic_args.dart';
import 'get_domain_topic_event_subscription_args.dart';
import 'get_domain_topic_event_subscription_delivery_attributes_args.dart';
import 'get_domain_topic_event_subscription_delivery_attributes_result.dart';
import 'get_domain_topic_event_subscription_full_url_args.dart';
import 'get_domain_topic_event_subscription_full_url_result.dart';
import 'get_domain_topic_event_subscription_result.dart';
import 'get_domain_topic_result.dart';
import 'get_event_subscription_args.dart';
import 'get_event_subscription_delivery_attributes_args.dart';
import 'get_event_subscription_delivery_attributes_result.dart';
import 'get_event_subscription_full_url_args.dart';
import 'get_event_subscription_full_url_result.dart';
import 'get_event_subscription_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';
import 'get_namespace_topic_args.dart';
import 'get_namespace_topic_event_subscription_args.dart';
import 'get_namespace_topic_event_subscription_delivery_attributes_args.dart';
import 'get_namespace_topic_event_subscription_delivery_attributes_result.dart';
import 'get_namespace_topic_event_subscription_full_url_args.dart';
import 'get_namespace_topic_event_subscription_full_url_result.dart';
import 'get_namespace_topic_event_subscription_result.dart';
import 'get_namespace_topic_result.dart';
import 'get_partner_configuration_args.dart';
import 'get_partner_configuration_result.dart';
import 'get_partner_destination_args.dart';
import 'get_partner_destination_result.dart';
import 'get_partner_namespace_args.dart';
import 'get_partner_namespace_result.dart';
import 'get_partner_registration_args.dart';
import 'get_partner_registration_result.dart';
import 'get_partner_topic_args.dart';
import 'get_partner_topic_event_subscription_args.dart';
import 'get_partner_topic_event_subscription_delivery_attributes_args.dart';
import 'get_partner_topic_event_subscription_delivery_attributes_result.dart';
import 'get_partner_topic_event_subscription_full_url_args.dart';
import 'get_partner_topic_event_subscription_full_url_result.dart';
import 'get_partner_topic_event_subscription_result.dart';
import 'get_partner_topic_result.dart';
import 'get_permission_binding_args.dart';
import 'get_permission_binding_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_system_topic_args.dart';
import 'get_system_topic_event_subscription_args.dart';
import 'get_system_topic_event_subscription_delivery_attributes_args.dart';
import 'get_system_topic_event_subscription_delivery_attributes_result.dart';
import 'get_system_topic_event_subscription_full_url_args.dart';
import 'get_system_topic_event_subscription_full_url_result.dart';
import 'get_system_topic_event_subscription_result.dart';
import 'get_system_topic_result.dart';
import 'get_topic_args.dart';
import 'get_topic_event_subscription_args.dart';
import 'get_topic_event_subscription_delivery_attributes_args.dart';
import 'get_topic_event_subscription_delivery_attributes_result.dart';
import 'get_topic_event_subscription_full_url_args.dart';
import 'get_topic_event_subscription_full_url_result.dart';
import 'get_topic_event_subscription_result.dart';
import 'get_topic_result.dart';
import 'get_topic_space_args.dart';
import 'get_topic_space_result.dart';
import 'list_domain_shared_access_keys_args.dart';
import 'list_domain_shared_access_keys_result.dart';
import 'list_namespace_shared_access_keys_args.dart';
import 'list_namespace_shared_access_keys_result.dart';
import 'list_namespace_topic_shared_access_keys_args.dart';
import 'list_namespace_topic_shared_access_keys_result.dart';
import 'list_partner_namespace_shared_access_keys_args.dart';
import 'list_partner_namespace_shared_access_keys_result.dart';
import 'list_topic_shared_access_keys_args.dart';
import 'list_topic_shared_access_keys_result.dart';

/// Get properties of a CA certificate.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_ca_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaCertificateResult> getCaCertificate(
  GetCaCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getCaCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaCertificateResult.fromMap(result);
}

pulumi.Output<GetCaCertificateResult> getCaCertificateOutput(
  GetCaCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getCaCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCaCertificateResult.fromMap);
}

/// Get properties of a channel.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}

pulumi.Output<GetChannelResult> getChannelOutput(
  GetChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelResult.fromMap);
}

/// Get the full endpoint URL of a partner destination channel.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_channel_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelFullUrlResult> getChannelFullUrl(
  GetChannelFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getChannelFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelFullUrlResult.fromMap(result);
}

pulumi.Output<GetChannelFullUrlResult> getChannelFullUrlOutput(
  GetChannelFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getChannelFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelFullUrlResult.fromMap);
}

/// Get properties of a client.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_client_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientResult> getClient(
  GetClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}

pulumi.Output<GetClientResult> getClientOutput(
  GetClientArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getClient',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientResult.fromMap);
}

/// Get properties of a client group.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_client_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientGroupResult> getClientGroup(
  GetClientGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getClientGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientGroupResult.fromMap(result);
}

pulumi.Output<GetClientGroupResult> getClientGroupOutput(
  GetClientGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getClientGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientGroupResult.fromMap);
}

/// Get properties of a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

pulumi.Output<GetDomainResult> getDomainOutput(
  GetDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainResult.fromMap);
}

/// Get properties of an event subscription of a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainEventSubscriptionResult> getDomainEventSubscription(
  GetDomainEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetDomainEventSubscriptionResult> getDomainEventSubscriptionOutput(
  GetDomainEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription for domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainEventSubscriptionDeliveryAttributesResult> getDomainEventSubscriptionDeliveryAttributes(
  GetDomainEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetDomainEventSubscriptionDeliveryAttributesResult> getDomainEventSubscriptionDeliveryAttributesOutput(
  GetDomainEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription for domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainEventSubscriptionFullUrlResult> getDomainEventSubscriptionFullUrl(
  GetDomainEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetDomainEventSubscriptionFullUrlResult> getDomainEventSubscriptionFullUrlOutput(
  GetDomainEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTopicResult> getDomainTopic(
  GetDomainTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTopicResult.fromMap(result);
}

pulumi.Output<GetDomainTopicResult> getDomainTopicOutput(
  GetDomainTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainTopicResult.fromMap);
}

/// Get properties of a nested event subscription for a domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_topic_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTopicEventSubscriptionResult> getDomainTopicEventSubscription(
  GetDomainTopicEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTopicEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetDomainTopicEventSubscriptionResult> getDomainTopicEventSubscriptionOutput(
  GetDomainTopicEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainTopicEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription for domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_topic_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTopicEventSubscriptionDeliveryAttributesResult> getDomainTopicEventSubscriptionDeliveryAttributes(
  GetDomainTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTopicEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetDomainTopicEventSubscriptionDeliveryAttributesResult> getDomainTopicEventSubscriptionDeliveryAttributesOutput(
  GetDomainTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainTopicEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for a nested event subscription for domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_topic_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTopicEventSubscriptionFullUrlResult> getDomainTopicEventSubscriptionFullUrl(
  GetDomainTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTopicEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetDomainTopicEventSubscriptionFullUrlResult> getDomainTopicEventSubscriptionFullUrlOutput(
  GetDomainTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getDomainTopicEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainTopicEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSubscriptionResult> getEventSubscription(
  GetEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetEventSubscriptionResult> getEventSubscriptionOutput(
  GetEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSubscriptionDeliveryAttributesResult> getEventSubscriptionDeliveryAttributes(
  GetEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetEventSubscriptionDeliveryAttributesResult> getEventSubscriptionDeliveryAttributesOutput(
  GetEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSubscriptionFullUrlResult> getEventSubscriptionFullUrl(
  GetEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetEventSubscriptionFullUrlResult> getEventSubscriptionFullUrlOutput(
  GetEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespace',
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
    'azure-native:eventgrid:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
}

/// Get properties of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_namespace_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceTopicResult> getNamespaceTopic(
  GetNamespaceTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceTopicResult.fromMap(result);
}

pulumi.Output<GetNamespaceTopicResult> getNamespaceTopicOutput(
  GetNamespaceTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceTopicResult.fromMap);
}

/// Get properties of an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_namespace_topic_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceTopicEventSubscriptionResult> getNamespaceTopicEventSubscription(
  GetNamespaceTopicEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceTopicEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetNamespaceTopicEventSubscriptionResult> getNamespaceTopicEventSubscriptionOutput(
  GetNamespaceTopicEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceTopicEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_namespace_topic_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceTopicEventSubscriptionDeliveryAttributesResult> getNamespaceTopicEventSubscriptionDeliveryAttributes(
  GetNamespaceTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceTopicEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetNamespaceTopicEventSubscriptionDeliveryAttributesResult> getNamespaceTopicEventSubscriptionDeliveryAttributesOutput(
  GetNamespaceTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceTopicEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_namespace_topic_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceTopicEventSubscriptionFullUrlResult> getNamespaceTopicEventSubscriptionFullUrl(
  GetNamespaceTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceTopicEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetNamespaceTopicEventSubscriptionFullUrlResult> getNamespaceTopicEventSubscriptionFullUrlOutput(
  GetNamespaceTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getNamespaceTopicEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceTopicEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a partner configuration.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerConfigurationResult> getPartnerConfiguration(
  GetPartnerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerConfigurationResult.fromMap(result);
}

pulumi.Output<GetPartnerConfigurationResult> getPartnerConfigurationOutput(
  GetPartnerConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerConfigurationResult.fromMap);
}

/// Get properties of a partner destination.
///
/// Uses Azure REST API version 2024-12-15-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_destination_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerDestinationResult> getPartnerDestination(
  GetPartnerDestinationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerDestination',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerDestinationResult.fromMap(result);
}

pulumi.Output<GetPartnerDestinationResult> getPartnerDestinationOutput(
  GetPartnerDestinationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerDestination',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerDestinationResult.fromMap);
}

/// Get properties of a partner namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerNamespaceResult> getPartnerNamespace(
  GetPartnerNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerNamespaceResult.fromMap(result);
}

pulumi.Output<GetPartnerNamespaceResult> getPartnerNamespaceOutput(
  GetPartnerNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerNamespaceResult.fromMap);
}

/// Gets a partner registration with the specified parameters.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerRegistrationResult> getPartnerRegistration(
  GetPartnerRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerRegistrationResult.fromMap(result);
}

pulumi.Output<GetPartnerRegistrationResult> getPartnerRegistrationOutput(
  GetPartnerRegistrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerRegistration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerRegistrationResult.fromMap);
}

/// Get properties of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerTopicResult> getPartnerTopic(
  GetPartnerTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTopicResult.fromMap(result);
}

pulumi.Output<GetPartnerTopicResult> getPartnerTopicOutput(
  GetPartnerTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerTopicResult.fromMap);
}

/// Get properties of an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_topic_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerTopicEventSubscriptionResult> getPartnerTopicEventSubscription(
  GetPartnerTopicEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTopicEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetPartnerTopicEventSubscriptionResult> getPartnerTopicEventSubscriptionOutput(
  GetPartnerTopicEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerTopicEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_topic_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerTopicEventSubscriptionDeliveryAttributesResult> getPartnerTopicEventSubscriptionDeliveryAttributes(
  GetPartnerTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTopicEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetPartnerTopicEventSubscriptionDeliveryAttributesResult> getPartnerTopicEventSubscriptionDeliveryAttributesOutput(
  GetPartnerTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerTopicEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_topic_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerTopicEventSubscriptionFullUrlResult> getPartnerTopicEventSubscriptionFullUrl(
  GetPartnerTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerTopicEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetPartnerTopicEventSubscriptionFullUrlResult> getPartnerTopicEventSubscriptionFullUrlOutput(
  GetPartnerTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPartnerTopicEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerTopicEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a permission binding.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_permission_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPermissionBindingResult> getPermissionBinding(
  GetPermissionBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPermissionBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionBindingResult.fromMap(result);
}

pulumi.Output<GetPermissionBindingResult> getPermissionBindingOutput(
  GetPermissionBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getPermissionBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPermissionBindingResult.fromMap);
}

/// Get a specific private endpoint connection under a topic, domain, or partner namespace or namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getPrivateEndpointConnection',
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
    'azure-native:eventgrid:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get properties of a system topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_system_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemTopicResult> getSystemTopic(
  GetSystemTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemTopicResult.fromMap(result);
}

pulumi.Output<GetSystemTopicResult> getSystemTopicOutput(
  GetSystemTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSystemTopicResult.fromMap);
}

/// Get an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_system_topic_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemTopicEventSubscriptionResult> getSystemTopicEventSubscription(
  GetSystemTopicEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemTopicEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetSystemTopicEventSubscriptionResult> getSystemTopicEventSubscriptionOutput(
  GetSystemTopicEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSystemTopicEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_system_topic_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemTopicEventSubscriptionDeliveryAttributesResult> getSystemTopicEventSubscriptionDeliveryAttributes(
  GetSystemTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemTopicEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetSystemTopicEventSubscriptionDeliveryAttributesResult> getSystemTopicEventSubscriptionDeliveryAttributesOutput(
  GetSystemTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSystemTopicEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription of a system topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_system_topic_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemTopicEventSubscriptionFullUrlResult> getSystemTopicEventSubscriptionFullUrl(
  GetSystemTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemTopicEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetSystemTopicEventSubscriptionFullUrlResult> getSystemTopicEventSubscriptionFullUrlOutput(
  GetSystemTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getSystemTopicEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSystemTopicEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

pulumi.Output<GetTopicResult> getTopicOutput(
  GetTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicResult.fromMap);
}

/// Get properties of an event subscription of a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicEventSubscriptionResult> getTopicEventSubscription(
  GetTopicEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicEventSubscriptionResult.fromMap(result);
}

pulumi.Output<GetTopicEventSubscriptionResult> getTopicEventSubscriptionOutput(
  GetTopicEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicEventSubscriptionResult.fromMap);
}

/// Get all delivery attributes for an event subscription for topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_event_subscription_delivery_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicEventSubscriptionDeliveryAttributesResult> getTopicEventSubscriptionDeliveryAttributes(
  GetTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscriptionDeliveryAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicEventSubscriptionDeliveryAttributesResult.fromMap(result);
}

pulumi.Output<GetTopicEventSubscriptionDeliveryAttributesResult> getTopicEventSubscriptionDeliveryAttributesOutput(
  GetTopicEventSubscriptionDeliveryAttributesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscriptionDeliveryAttributes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicEventSubscriptionDeliveryAttributesResult.fromMap);
}

/// Get the full endpoint URL for an event subscription for topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_event_subscription_full_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicEventSubscriptionFullUrlResult> getTopicEventSubscriptionFullUrl(
  GetTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscriptionFullUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicEventSubscriptionFullUrlResult.fromMap(result);
}

pulumi.Output<GetTopicEventSubscriptionFullUrlResult> getTopicEventSubscriptionFullUrlOutput(
  GetTopicEventSubscriptionFullUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicEventSubscriptionFullUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicEventSubscriptionFullUrlResult.fromMap);
}

/// Get properties of a topic space.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_space_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicSpaceResult> getTopicSpace(
  GetTopicSpaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicSpace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicSpaceResult.fromMap(result);
}

pulumi.Output<GetTopicSpaceResult> getTopicSpaceOutput(
  GetTopicSpaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:getTopicSpace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicSpaceResult.fromMap);
}

/// List the two keys used to publish to a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_list_domain_shared_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDomainSharedAccessKeysResult> listDomainSharedAccessKeys(
  ListDomainSharedAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:listDomainSharedAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDomainSharedAccessKeysResult.fromMap(result);
}

pulumi.Output<ListDomainSharedAccessKeysResult> listDomainSharedAccessKeysOutput(
  ListDomainSharedAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:listDomainSharedAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDomainSharedAccessKeysResult.fromMap);
}

/// List the two keys used to publish to a namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_list_namespace_shared_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceSharedAccessKeysResult> listNamespaceSharedAccessKeys(
  ListNamespaceSharedAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:listNamespaceSharedAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceSharedAccessKeysResult.fromMap(result);
}

pulumi.Output<ListNamespaceSharedAccessKeysResult> listNamespaceSharedAccessKeysOutput(
  ListNamespaceSharedAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:listNamespaceSharedAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceSharedAccessKeysResult.fromMap);
}

/// List the two keys used to publish to a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_list_namespace_topic_shared_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceTopicSharedAccessKeysResult> listNamespaceTopicSharedAccessKeys(
  ListNamespaceTopicSharedAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:listNamespaceTopicSharedAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceTopicSharedAccessKeysResult.fromMap(result);
}

pulumi.Output<ListNamespaceTopicSharedAccessKeysResult> listNamespaceTopicSharedAccessKeysOutput(
  ListNamespaceTopicSharedAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:listNamespaceTopicSharedAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceTopicSharedAccessKeysResult.fromMap);
}

/// List the two keys used to publish to a partner namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_list_partner_namespace_shared_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPartnerNamespaceSharedAccessKeysResult> listPartnerNamespaceSharedAccessKeys(
  ListPartnerNamespaceSharedAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:listPartnerNamespaceSharedAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPartnerNamespaceSharedAccessKeysResult.fromMap(result);
}

pulumi.Output<ListPartnerNamespaceSharedAccessKeysResult> listPartnerNamespaceSharedAccessKeysOutput(
  ListPartnerNamespaceSharedAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:listPartnerNamespaceSharedAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPartnerNamespaceSharedAccessKeysResult.fromMap);
}

/// List the two keys used to publish to a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_list_topic_shared_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTopicSharedAccessKeysResult> listTopicSharedAccessKeys(
  ListTopicSharedAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:eventgrid:listTopicSharedAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTopicSharedAccessKeysResult.fromMap(result);
}

pulumi.Output<ListTopicSharedAccessKeysResult> listTopicSharedAccessKeysOutput(
  ListTopicSharedAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:eventgrid:listTopicSharedAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListTopicSharedAccessKeysResult.fromMap);
}
