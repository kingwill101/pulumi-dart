import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_akri_connector_args.dart';
import 'get_akri_connector_result.dart';
import 'get_akri_connector_template_args.dart';
import 'get_akri_connector_template_result.dart';
import 'get_akri_service_args.dart';
import 'get_akri_service_result.dart';
import 'get_broker_args.dart';
import 'get_broker_authentication_args.dart';
import 'get_broker_authentication_result.dart';
import 'get_broker_authorization_args.dart';
import 'get_broker_authorization_result.dart';
import 'get_broker_listener_args.dart';
import 'get_broker_listener_result.dart';
import 'get_broker_result.dart';
import 'get_dataflow_args.dart';
import 'get_dataflow_endpoint_args.dart';
import 'get_dataflow_endpoint_result.dart';
import 'get_dataflow_graph_args.dart';
import 'get_dataflow_graph_result.dart';
import 'get_dataflow_profile_args.dart';
import 'get_dataflow_profile_result.dart';
import 'get_dataflow_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_registry_endpoint_args.dart';
import 'get_registry_endpoint_result.dart';

/// Get a AkriConnectorResource
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_akri_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAkriConnectorResult> getAkriConnector(
  GetAkriConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAkriConnectorResult.fromMap(result);
}

pulumi.Output<GetAkriConnectorResult> getAkriConnectorOutput(
  GetAkriConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAkriConnectorResult.fromMap);
}

/// Get a AkriConnectorTemplateResource
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_akri_connector_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAkriConnectorTemplateResult> getAkriConnectorTemplate(
  GetAkriConnectorTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriConnectorTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAkriConnectorTemplateResult.fromMap(result);
}

pulumi.Output<GetAkriConnectorTemplateResult> getAkriConnectorTemplateOutput(
  GetAkriConnectorTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriConnectorTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAkriConnectorTemplateResult.fromMap);
}

/// Get a AkriServiceResource
///
/// Uses Azure REST API version 2026-03-01.
///
/// Other available API versions: 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_akri_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAkriServiceResult> getAkriService(
  GetAkriServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAkriServiceResult.fromMap(result);
}

pulumi.Output<GetAkriServiceResult> getAkriServiceOutput(
  GetAkriServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getAkriService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAkriServiceResult.fromMap);
}

/// Get a BrokerResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_broker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerResult> getBroker(
  GetBrokerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getBroker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerResult.fromMap(result);
}

pulumi.Output<GetBrokerResult> getBrokerOutput(
  GetBrokerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getBroker',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBrokerResult.fromMap);
}

/// Get a BrokerAuthenticationResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_broker_authentication_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerAuthenticationResult> getBrokerAuthentication(
  GetBrokerAuthenticationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerAuthentication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerAuthenticationResult.fromMap(result);
}

pulumi.Output<GetBrokerAuthenticationResult> getBrokerAuthenticationOutput(
  GetBrokerAuthenticationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerAuthentication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBrokerAuthenticationResult.fromMap);
}

/// Get a BrokerAuthorizationResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_broker_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerAuthorizationResult> getBrokerAuthorization(
  GetBrokerAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerAuthorizationResult.fromMap(result);
}

pulumi.Output<GetBrokerAuthorizationResult> getBrokerAuthorizationOutput(
  GetBrokerAuthorizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerAuthorization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBrokerAuthorizationResult.fromMap);
}

/// Get a BrokerListenerResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_broker_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerListenerResult> getBrokerListener(
  GetBrokerListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerListenerResult.fromMap(result);
}

pulumi.Output<GetBrokerListenerResult> getBrokerListenerOutput(
  GetBrokerListenerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getBrokerListener',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBrokerListenerResult.fromMap);
}

/// Get a DataflowResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_dataflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataflowResult> getDataflow(
  GetDataflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataflowResult.fromMap(result);
}

pulumi.Output<GetDataflowResult> getDataflowOutput(
  GetDataflowArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataflowResult.fromMap);
}

/// Get a DataflowEndpointResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_dataflow_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataflowEndpointResult> getDataflowEndpoint(
  GetDataflowEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataflowEndpointResult.fromMap(result);
}

pulumi.Output<GetDataflowEndpointResult> getDataflowEndpointOutput(
  GetDataflowEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataflowEndpointResult.fromMap);
}

/// Get a DataflowGraphResource
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_dataflow_graph_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataflowGraphResult> getDataflowGraph(
  GetDataflowGraphArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowGraph',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataflowGraphResult.fromMap(result);
}

pulumi.Output<GetDataflowGraphResult> getDataflowGraphOutput(
  GetDataflowGraphArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowGraph',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataflowGraphResult.fromMap);
}

/// Get a DataflowProfileResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_dataflow_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataflowProfileResult> getDataflowProfile(
  GetDataflowProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataflowProfileResult.fromMap(result);
}

pulumi.Output<GetDataflowProfileResult> getDataflowProfileOutput(
  GetDataflowProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getDataflowProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataflowProfileResult.fromMap);
}

/// Get a InstanceResource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Get a RegistryEndpointResource
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperations_get_registry_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEndpointResult> getRegistryEndpoint(
  GetRegistryEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperations:getRegistryEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEndpointResult.fromMap(result);
}

pulumi.Output<GetRegistryEndpointResult> getRegistryEndpointOutput(
  GetRegistryEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperations:getRegistryEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryEndpointResult.fromMap);
}
