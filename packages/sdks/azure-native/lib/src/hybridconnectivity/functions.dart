import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_public_cloud_connector_args.dart';
import 'get_public_cloud_connector_result.dart';
import 'get_service_configuration_args.dart';
import 'get_service_configuration_result.dart';
import 'get_solution_configuration_args.dart';
import 'get_solution_configuration_result.dart';
import 'list_endpoint_credentials_args.dart';
import 'list_endpoint_credentials_result.dart';
import 'list_endpoint_ingress_gateway_credentials_args.dart';
import 'list_endpoint_ingress_gateway_credentials_result.dart';
import 'list_endpoint_managed_proxy_details_args.dart';
import 'list_endpoint_managed_proxy_details_result.dart';

/// Gets the endpoint to the resource.
///
/// Uses Azure REST API version 2024-12-01.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Get a PublicCloudConnector
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_get_public_cloud_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicCloudConnectorResult> getPublicCloudConnector(
  GetPublicCloudConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:getPublicCloudConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicCloudConnectorResult.fromMap(result);
}

/// Gets the details about the service to the resource.
///
/// Uses Azure REST API version 2024-12-01.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_get_service_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConfigurationResult> getServiceConfiguration(
  GetServiceConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:getServiceConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConfigurationResult.fromMap(result);
}

/// Get a SolutionConfiguration
///
/// Uses Azure REST API version 2024-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_get_solution_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionConfigurationResult> getSolutionConfiguration(
  GetSolutionConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:getSolutionConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionConfigurationResult.fromMap(result);
}

/// Gets the endpoint access credentials to the resource.
///
/// Uses Azure REST API version 2024-12-01.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_list_endpoint_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEndpointCredentialsResult> listEndpointCredentials(
  ListEndpointCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:listEndpointCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEndpointCredentialsResult.fromMap(result);
}

/// Gets the ingress gateway endpoint credentials
///
/// Uses Azure REST API version 2024-12-01.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_list_endpoint_ingress_gateway_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEndpointIngressGatewayCredentialsResult>
listEndpointIngressGatewayCredentials(
  ListEndpointIngressGatewayCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:listEndpointIngressGatewayCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEndpointIngressGatewayCredentialsResult.fromMap(result);
}

/// Fetches the managed proxy details
///
/// Uses Azure REST API version 2024-12-01.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridconnectivity_list_endpoint_managed_proxy_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEndpointManagedProxyDetailsResult> listEndpointManagedProxyDetails(
  ListEndpointManagedProxyDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridconnectivity:listEndpointManagedProxyDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEndpointManagedProxyDetailsResult.fromMap(result);
}
