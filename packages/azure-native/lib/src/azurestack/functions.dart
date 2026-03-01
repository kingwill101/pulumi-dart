import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_subscription_args.dart';
import 'get_customer_subscription_result.dart';
import 'get_linked_subscription_args.dart';
import 'get_linked_subscription_result.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_products_args.dart';
import 'get_products_result.dart';
import 'get_registration_activation_key_args.dart';
import 'get_registration_activation_key_result.dart';
import 'get_registration_args.dart';
import 'get_registration_result.dart';
import 'list_product_details_args.dart';
import 'list_product_details_result.dart';
import 'list_products_args.dart';
import 'list_products_result.dart';

/// Returns the specified product.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_customer_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerSubscriptionResult> getCustomerSubscription(
  GetCustomerSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getCustomerSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerSubscriptionResult.fromMap(result);
}

/// Returns the properties of a Linked Subscription resource.
///
/// Uses Azure REST API version 2020-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_linked_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedSubscriptionResult> getLinkedSubscription(
  GetLinkedSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getLinkedSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedSubscriptionResult.fromMap(result);
}

/// Returns the specified product.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Returns a list of products.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductsResult> getProducts(
  GetProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductsResult.fromMap(result);
}

/// Returns the properties of an Azure Stack registration.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationResult> getRegistration(
  GetRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationResult.fromMap(result);
}

/// Returns Azure Stack Activation Key.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_get_registration_activation_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationActivationKeyResult> getRegistrationActivationKey(
  GetRegistrationActivationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:getRegistrationActivationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationActivationKeyResult.fromMap(result);
}

/// Returns the extended properties of a product.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_list_product_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProductDetailsResult> listProductDetails(
  ListProductDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:listProductDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProductDetailsResult.fromMap(result);
}

/// Returns a list of products.
///
/// Uses Azure REST API version 2022-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestack_list_products_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProductsResult> listProducts(
  ListProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestack:listProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProductsResult.fromMap(result);
}
