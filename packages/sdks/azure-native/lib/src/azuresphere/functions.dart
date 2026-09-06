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

pulumi.Output<GetCatalogResult> getCatalogOutput(
  GetCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCatalogResult.fromMap);
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

pulumi.Output<GetDeploymentResult> getDeploymentOutput(
  GetDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResult.fromMap);
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

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
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

pulumi.Output<GetDeviceGroupResult> getDeviceGroupOutput(
  GetDeviceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getDeviceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceGroupResult.fromMap);
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

pulumi.Output<GetImageResult> getImageOutput(
  GetImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageResult.fromMap);
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

pulumi.Output<GetProductResult> getProductOutput(
  GetProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductResult.fromMap);
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

pulumi.Output<ListCatalogDeploymentsResult> listCatalogDeploymentsOutput(
  ListCatalogDeploymentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeployments',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListCatalogDeploymentsResult.fromMap);
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

pulumi.Output<ListCatalogDeviceGroupsResult> listCatalogDeviceGroupsOutput(
  ListCatalogDeviceGroupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeviceGroups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListCatalogDeviceGroupsResult.fromMap);
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

pulumi.Output<ListCatalogDeviceInsightsResult> listCatalogDeviceInsightsOutput(
  ListCatalogDeviceInsightsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDeviceInsights',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListCatalogDeviceInsightsResult.fromMap);
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

pulumi.Output<ListCatalogDevicesResult> listCatalogDevicesOutput(
  ListCatalogDevicesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azuresphere:listCatalogDevices',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListCatalogDevicesResult.fromMap);
}
