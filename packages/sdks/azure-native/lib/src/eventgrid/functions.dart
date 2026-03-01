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
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a channel.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL of a partner destination channel.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a client.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a client group.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of an event subscription of a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription for domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription for domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a nested event subscription for a domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription for domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for a nested event subscription for domain topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription of a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a partner configuration.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a partner destination.
///
/// Uses Azure REST API version 2024-12-15-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a partner namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets a partner registration with the specified parameters.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription of a partner topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a permission binding.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a specific private endpoint connection under a topic, domain, or partner namespace or namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a system topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription of a system topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of an event subscription of a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get all delivery attributes for an event subscription for topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the full endpoint URL for an event subscription for topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get properties of a topic space.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// List the two keys used to publish to a domain.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// List the two keys used to publish to a namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// List the two keys used to publish to a namespace topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// List the two keys used to publish to a partner namespace.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// List the two keys used to publish to a topic.
///
/// Uses Azure REST API version 2025-02-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
