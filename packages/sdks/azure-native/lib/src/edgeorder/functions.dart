import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_args.dart';
import 'get_address_result.dart';
import 'get_order_item_args.dart';
import 'get_order_item_result.dart';
import 'list_products_and_configuration_product_families_args.dart';
import 'list_products_and_configuration_product_families_result.dart';
import 'list_products_and_configurations_args.dart';
import 'list_products_and_configurations_result.dart';

/// Get information about the specified address.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_edgeorder_get_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:edgeorder:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}

/// Get an order item.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_edgeorder_get_order_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderItemResult> getOrderItem(
  GetOrderItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:edgeorder:getOrderItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderItemResult.fromMap(result);
}

/// List product families for the given subscription.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_edgeorder_list_products_and_configuration_product_families_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProductsAndConfigurationProductFamiliesResult>
listProductsAndConfigurationProductFamilies(
  ListProductsAndConfigurationProductFamiliesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:edgeorder:listProductsAndConfigurationProductFamilies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProductsAndConfigurationProductFamiliesResult.fromMap(result);
}

/// List configurations for the given product family, product line and product for the given subscription.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_edgeorder_list_products_and_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProductsAndConfigurationsResult> listProductsAndConfigurations(
  ListProductsAndConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:edgeorder:listProductsAndConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProductsAndConfigurationsResult.fromMap(result);
}
