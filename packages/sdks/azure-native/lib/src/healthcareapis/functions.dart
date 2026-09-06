import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_analytics_connector_args.dart';
import 'get_analytics_connector_result.dart';
import 'get_dicom_service_args.dart';
import 'get_dicom_service_result.dart';
import 'get_fhir_service_args.dart';
import 'get_fhir_service_result.dart';
import 'get_iot_connector_args.dart';
import 'get_iot_connector_fhir_destination_args.dart';
import 'get_iot_connector_fhir_destination_result.dart';
import 'get_iot_connector_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_private_endpoint_connection_args.dart';
import 'get_workspace_private_endpoint_connection_result.dart';
import 'get_workspace_result.dart';

/// Gets the properties of the specified Analytics Connector.
///
/// Uses Azure REST API version 2022-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_analytics_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnalyticsConnectorResult> getAnalyticsConnector(
  GetAnalyticsConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getAnalyticsConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnalyticsConnectorResult.fromMap(result);
}

pulumi.Output<GetAnalyticsConnectorResult> getAnalyticsConnectorOutput(
  GetAnalyticsConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getAnalyticsConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnalyticsConnectorResult.fromMap);
}

/// Gets the properties of the specified DICOM Service.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_dicom_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDicomServiceResult> getDicomService(
  GetDicomServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getDicomService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomServiceResult.fromMap(result);
}

pulumi.Output<GetDicomServiceResult> getDicomServiceOutput(
  GetDicomServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getDicomService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDicomServiceResult.fromMap);
}

/// Gets the properties of the specified FHIR Service.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_fhir_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirServiceResult> getFhirService(
  GetFhirServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getFhirService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirServiceResult.fromMap(result);
}

pulumi.Output<GetFhirServiceResult> getFhirServiceOutput(
  GetFhirServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getFhirService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFhirServiceResult.fromMap);
}

/// Gets the properties of the specified IoT Connector.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_iot_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotConnectorResult> getIotConnector(
  GetIotConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getIotConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotConnectorResult.fromMap(result);
}

pulumi.Output<GetIotConnectorResult> getIotConnectorOutput(
  GetIotConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getIotConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIotConnectorResult.fromMap);
}

/// Gets the properties of the specified Iot Connector FHIR destination.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_iot_connector_fhir_destination_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotConnectorFhirDestinationResult> getIotConnectorFhirDestination(
  GetIotConnectorFhirDestinationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getIotConnectorFhirDestination',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotConnectorFhirDestinationResult.fromMap(result);
}

pulumi.Output<GetIotConnectorFhirDestinationResult> getIotConnectorFhirDestinationOutput(
  GetIotConnectorFhirDestinationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getIotConnectorFhirDestination',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIotConnectorFhirDestinationResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getPrivateEndpointConnection',
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
    'azure-native:healthcareapis:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get the metadata of a service instance.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// Gets the properties of the specified workspace.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

pulumi.Output<GetWorkspaceResult> getWorkspaceOutput(
  GetWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the workspace.
///
/// Uses Azure REST API version 2024-03-31.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcareapis_get_workspace_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacePrivateEndpointConnectionResult> getWorkspacePrivateEndpointConnection(
  GetWorkspacePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthcareapis:getWorkspacePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacePrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetWorkspacePrivateEndpointConnectionResult> getWorkspacePrivateEndpointConnectionOutput(
  GetWorkspacePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthcareapis:getWorkspacePrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspacePrivateEndpointConnectionResult.fromMap);
}
