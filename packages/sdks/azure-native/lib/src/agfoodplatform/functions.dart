import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_connector_args.dart';
import 'get_data_connector_result.dart';
import 'get_data_manager_for_agriculture_resource_args.dart';
import 'get_data_manager_for_agriculture_resource_result.dart';
import 'get_extension_args.dart';
import 'get_extension_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_solution_args.dart';
import 'get_solution_result.dart';

/// Get specific Data Connector resource by DataConnectorName.
///
/// Uses Azure REST API version 2023-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agfoodplatform_get_data_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataConnectorResult> getDataConnector(
  GetDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataConnectorResult.fromMap(result);
}

pulumi.Output<GetDataConnectorResult> getDataConnectorOutput(
  GetDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataConnectorResult.fromMap);
}

/// Get DataManagerForAgriculture resource.
///
/// Uses Azure REST API version 2023-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agfoodplatform_get_data_manager_for_agriculture_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataManagerForAgricultureResourceResult> getDataManagerForAgricultureResource(
  GetDataManagerForAgricultureResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getDataManagerForAgricultureResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataManagerForAgricultureResourceResult.fromMap(result);
}

pulumi.Output<GetDataManagerForAgricultureResourceResult> getDataManagerForAgricultureResourceOutput(
  GetDataManagerForAgricultureResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getDataManagerForAgricultureResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataManagerForAgricultureResourceResult.fromMap);
}

/// Get installed extension details by extension id.
///
/// Uses Azure REST API version 2023-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agfoodplatform_get_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionResult> getExtension(
  GetExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionResult.fromMap(result);
}

pulumi.Output<GetExtensionResult> getExtensionOutput(
  GetExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExtensionResult.fromMap);
}

/// Get Private endpoint connection object.
///
/// Uses Azure REST API version 2023-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agfoodplatform_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getPrivateEndpointConnection',
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
    'azure-native:agfoodplatform:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get installed Solution details by Solution id.
///
/// Uses Azure REST API version 2023-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agfoodplatform_get_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionResult> getSolution(
  GetSolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getSolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionResult.fromMap(result);
}

pulumi.Output<GetSolutionResult> getSolutionOutput(
  GetSolutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:agfoodplatform:getSolution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSolutionResult.fromMap);
}
