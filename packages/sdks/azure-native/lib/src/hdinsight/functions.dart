import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_gateway_settings_args.dart';
import 'get_cluster_gateway_settings_result.dart';
import 'get_cluster_result.dart';
import 'get_extension_args.dart';
import 'get_extension_azure_monitor_agent_status_args.dart';
import 'get_extension_azure_monitor_agent_status_result.dart';
import 'get_extension_azure_monitor_status_args.dart';
import 'get_extension_azure_monitor_status_result.dart';
import 'get_extension_monitoring_status_args.dart';
import 'get_extension_monitoring_status_result.dart';
import 'get_extension_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Gets properties of the specified application.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Gets the specified cluster.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets the gateway settings for the specified cluster.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_cluster_gateway_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterGatewaySettingsResult> getClusterGatewaySettings(
  GetClusterGatewaySettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getClusterGatewaySettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterGatewaySettingsResult.fromMap(result);
}

/// Gets the extension properties for the specified HDInsight cluster extension.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionResult> getExtension(
  GetExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionResult.fromMap(result);
}

/// Gets the status of Azure Monitor Agent on the HDInsight cluster.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_extension_azure_monitor_agent_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionAzureMonitorAgentStatusResult> getExtensionAzureMonitorAgentStatus(
  GetExtensionAzureMonitorAgentStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getExtensionAzureMonitorAgentStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionAzureMonitorAgentStatusResult.fromMap(result);
}

/// Gets the status of Azure Monitor on the HDInsight cluster.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_extension_azure_monitor_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionAzureMonitorStatusResult> getExtensionAzureMonitorStatus(
  GetExtensionAzureMonitorStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getExtensionAzureMonitorStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionAzureMonitorStatusResult.fromMap(result);
}

/// Gets the status of Operations Management Suite (OMS) on the HDInsight cluster.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_extension_monitoring_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionMonitoringStatusResult> getExtensionMonitoringStatus(
  GetExtensionMonitoringStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getExtensionMonitoringStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionMonitoringStatusResult.fromMap(result);
}

/// Gets the specific private endpoint connection.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hdinsight:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
