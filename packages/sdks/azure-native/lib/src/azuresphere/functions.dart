import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_args.dart';
import 'get_catalog_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_result.dart';
import 'get_device_args.dart';
import 'get_device_group_args.dart';
import 'get_device_group_result.dart';
import 'get_device_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'list_catalog_deployments_args.dart';
import 'list_catalog_deployments_result.dart';
import 'list_catalog_device_groups_args.dart';
import 'list_catalog_device_groups_result.dart';
import 'list_catalog_device_insights_args.dart';
import 'list_catalog_device_insights_result.dart';
import 'list_catalog_devices_args.dart';
import 'list_catalog_devices_result.dart';

/// Get a Catalog
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}

/// Get a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

/// Get a Device. Use '.unassigned' or '.default' for the device group and product names when a device does not belong to a device group and product.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

/// Get a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_device_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceGroupResult> getDeviceGroup(
  GetDeviceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getDeviceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceGroupResult.fromMap(result);
}

/// Get a Image
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Get a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Lists deployments for catalog.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_list_catalog_deployments_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCatalogDeploymentsResult> listCatalogDeployments(
  ListCatalogDeploymentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeployments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCatalogDeploymentsResult.fromMap(result);
}

/// List the device groups for the catalog.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_list_catalog_device_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCatalogDeviceGroupsResult> listCatalogDeviceGroups(
  ListCatalogDeviceGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeviceGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCatalogDeviceGroupsResult.fromMap(result);
}

/// Lists device insights for catalog.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_list_catalog_device_insights_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCatalogDeviceInsightsResult> listCatalogDeviceInsights(
  ListCatalogDeviceInsightsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeviceInsights',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCatalogDeviceInsightsResult.fromMap(result);
}

/// Lists devices for catalog.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuresphere_list_catalog_devices_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCatalogDevicesResult> listCatalogDevices(
  ListCatalogDevicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDevices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCatalogDevicesResult.fromMap(result);
}
