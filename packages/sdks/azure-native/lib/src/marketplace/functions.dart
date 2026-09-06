import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_store_collection_args.dart';
import 'get_private_store_collection_offer_args.dart';
import 'get_private_store_collection_offer_result.dart';
import 'get_private_store_collection_result.dart';
import 'get_user_solution_args.dart';
import 'get_user_solution_result.dart';
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

pulumi.Output<GetPrivateStoreCollectionResult> getPrivateStoreCollectionOutput(
  GetPrivateStoreCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:getPrivateStoreCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateStoreCollectionResult.fromMap);
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

pulumi.Output<GetPrivateStoreCollectionOfferResult> getPrivateStoreCollectionOfferOutput(
  GetPrivateStoreCollectionOfferArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:getPrivateStoreCollectionOffer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateStoreCollectionOfferResult.fromMap);
}

/// Get information about the user solution
///
/// Uses Azure REST API version 2023-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_user_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSolutionResult> getUserSolution(
  GetUserSolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:marketplace:getUserSolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSolutionResult.fromMap(result);
}

pulumi.Output<GetUserSolutionResult> getUserSolutionOutput(
  GetUserSolutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:getUserSolution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserSolutionResult.fromMap);
}

/// List new plans notifications
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_new_plans_notifications_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreNewPlansNotificationsResult> listPrivateStoreNewPlansNotifications(
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

pulumi.Output<ListPrivateStoreNewPlansNotificationsResult> listPrivateStoreNewPlansNotificationsOutput(
  ListPrivateStoreNewPlansNotificationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreNewPlansNotifications',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPrivateStoreNewPlansNotificationsResult.fromMap);
}

/// List stop sell notifications for both stop sell offers and stop sell plans
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_stop_sell_offers_plans_notifications_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreStopSellOffersPlansNotificationsResult> listPrivateStoreStopSellOffersPlansNotifications(
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

pulumi.Output<ListPrivateStoreStopSellOffersPlansNotificationsResult> listPrivateStoreStopSellOffersPlansNotificationsOutput(
  ListPrivateStoreStopSellOffersPlansNotificationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreStopSellOffersPlansNotifications',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPrivateStoreStopSellOffersPlansNotificationsResult.fromMap);
}

/// List all the subscriptions in the private store context
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_list_private_store_subscriptions_context_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateStoreSubscriptionsContextResult> listPrivateStoreSubscriptionsContext(
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

pulumi.Output<ListPrivateStoreSubscriptionsContextResult> listPrivateStoreSubscriptionsContextOutput(
  ListPrivateStoreSubscriptionsContextArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:marketplace:listPrivateStoreSubscriptionsContext',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPrivateStoreSubscriptionsContextResult.fromMap);
}
