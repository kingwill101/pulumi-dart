import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_extension_args.dart';
import 'get_extension_result.dart';
import 'get_flux_configuration_args.dart';
import 'get_flux_configuration_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_private_link_scope_args.dart';
import 'get_private_link_scope_result.dart';
import 'get_source_control_configuration_args.dart';
import 'get_source_control_configuration_result.dart';

/// Gets Kubernetes Cluster Extension.
///
/// Uses Azure REST API version 2023-05-01.
///
/// Other available API versions: 2022-04-02-preview, 2022-07-01, 2022-11-01, 2024-11-01, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesconfiguration_get_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionResult> getExtension(
  GetExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesconfiguration:getExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionResult.fromMap(result);
}

/// Gets details of the Flux Configuration.
///
/// Uses Azure REST API version 2023-05-01.
///
/// Other available API versions: 2022-07-01, 2022-11-01, 2024-04-01-preview, 2024-11-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesconfiguration_get_flux_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFluxConfigurationResult> getFluxConfiguration(
  GetFluxConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesconfiguration:getFluxConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFluxConfigurationResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2022-04-02-preview.
///
/// Other available API versions: 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesconfiguration_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesconfiguration:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Returns a Azure Arc PrivateLinkScope.
///
/// Uses Azure REST API version 2022-04-02-preview.
///
/// Other available API versions: 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesconfiguration_get_private_link_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkScopeResult> getPrivateLinkScope(
  GetPrivateLinkScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesconfiguration:getPrivateLinkScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkScopeResult.fromMap(result);
}

/// Gets details of the Source Control Configuration.
///
/// Uses Azure REST API version 2023-05-01.
///
/// Other available API versions: 2022-07-01, 2022-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetesconfiguration_get_source_control_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceControlConfigurationResult> getSourceControlConfiguration(
  GetSourceControlConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetesconfiguration:getSourceControlConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceControlConfigurationResult.fromMap(result);
}
