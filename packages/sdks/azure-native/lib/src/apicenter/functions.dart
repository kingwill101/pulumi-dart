import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_args.dart';
import 'get_api_definition_args.dart';
import 'get_api_definition_result.dart';
import 'get_api_result.dart';
import 'get_api_source_args.dart';
import 'get_api_source_result.dart';
import 'get_api_version_args.dart';
import 'get_api_version_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_result.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_metadata_schema_args.dart';
import 'get_metadata_schema_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Returns details of the API.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

/// Returns details of the API definition.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_api_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiDefinitionResult> getApiDefinition(
  GetApiDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getApiDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiDefinitionResult.fromMap(result);
}

/// Returns details of the API source.
///
/// Uses Azure REST API version 2024-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_api_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiSourceResult> getApiSource(
  GetApiSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getApiSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiSourceResult.fromMap(result);
}

/// Returns details of the API version.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_api_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionResult> getApiVersion(
  GetApiVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getApiVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionResult.fromMap(result);
}

/// Returns details of the API deployment.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

/// Returns details of the environment.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Returns details of the metadata schema.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_metadata_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataSchemaResult> getMetadataSchema(
  GetMetadataSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaResult.fromMap(result);
}

/// Returns details of the service.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2023-07-01-preview, 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Returns details of the workspace.
///
/// Uses Azure REST API version 2024-03-15-preview.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apicenter_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:apicenter:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
