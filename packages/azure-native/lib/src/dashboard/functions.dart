import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dashboard_args.dart';
import 'get_dashboard_definition_args.dart';
import 'get_dashboard_definition_result.dart';
import 'get_dashboard_result.dart';
import 'get_grafana_args.dart';
import 'get_grafana_result.dart';
import 'get_integration_fabric_args.dart';
import 'get_integration_fabric_result.dart';
import 'get_managed_private_endpoint_args.dart';
import 'get_managed_private_endpoint_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get the properties of a specific dashboard for grafana resource.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_dashboard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDashboardResult> getDashboard(
  GetDashboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getDashboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDashboardResult.fromMap(result);
}

/// Get the properties of a specific dashboard definition.
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_dashboard_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDashboardDefinitionResult> getDashboardDefinition(
  GetDashboardDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getDashboardDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDashboardDefinitionResult.fromMap(result);
}

/// The grafana resource type.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-08-01, 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_grafana_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGrafanaResult> getGrafana(
  GetGrafanaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getGrafana',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrafanaResult.fromMap(result);
}

/// The integration fabric resource type.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_integration_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationFabricResult> getIntegrationFabric(
  GetIntegrationFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getIntegrationFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationFabricResult.fromMap(result);
}

/// The managed private endpoint resource type.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_managed_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedPrivateEndpointResult> getManagedPrivateEndpoint(
  GetManagedPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getManagedPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrivateEndpointResult.fromMap(result);
}

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2022-08-01, 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dashboard_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dashboard:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
