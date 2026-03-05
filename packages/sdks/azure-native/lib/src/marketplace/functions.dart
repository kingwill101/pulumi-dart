import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_store_collection_args.dart';
import 'get_private_store_collection_offer_args.dart';
import 'get_private_store_collection_offer_result.dart';
import 'get_private_store_collection_result.dart';
import 'list_private_store_new_plans_notifications_args.dart';
import 'list_private_store_new_plans_notifications_result.dart';
import 'list_private_store_stop_sell_offers_plans_notifications_args.dart';
import 'list_private_store_stop_sell_offers_plans_notifications_result.dart';
import 'list_private_store_subscriptions_context_args.dart';
import 'list_private_store_subscriptions_context_result.dart';

/// Gets private store collection
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_private_store_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateStoreCollectionResult> getPrivateStoreCollection(
  GetPrivateStoreCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:getPrivateStoreCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateStoreCollectionResult.fromMap(result);
}

/// Gets information about a specific offer.
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_private_store_collection_offer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateStoreCollectionOfferResult> getPrivateStoreCollectionOffer(
  GetPrivateStoreCollectionOfferArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:getPrivateStoreCollectionOffer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateStoreCollectionOfferResult.fromMap(result);
}

/// List new plans notifications
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_new_plans_notifications_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreNewPlansNotificationsResult>
listPrivateStoreNewPlansNotifications(
  ListPrivateStoreNewPlansNotificationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreNewPlansNotifications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPrivateStoreNewPlansNotificationsResult.fromMap(result);
}

/// List stop sell notifications for both stop sell offers and stop sell plans
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_stop_sell_offers_plans_notifications_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreStopSellOffersPlansNotificationsResult>
listPrivateStoreStopSellOffersPlansNotifications(
  ListPrivateStoreStopSellOffersPlansNotificationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreStopSellOffersPlansNotifications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPrivateStoreStopSellOffersPlansNotificationsResult.fromMap(result);
}

/// List all the subscriptions in the private store context
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_subscriptions_context_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreSubscriptionsContextResult>
listPrivateStoreSubscriptionsContext(
  ListPrivateStoreSubscriptionsContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreSubscriptionsContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPrivateStoreSubscriptionsContextResult.fromMap(result);
}
