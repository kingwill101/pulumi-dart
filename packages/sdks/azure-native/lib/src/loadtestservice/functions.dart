import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_test_args.dart';
import 'get_load_test_mapping_args.dart';
import 'get_load_test_mapping_result.dart';
import 'get_load_test_profile_mapping_args.dart';
import 'get_load_test_profile_mapping_result.dart';
import 'get_load_test_result.dart';
import 'get_playwright_workspace_args.dart';
import 'get_playwright_workspace_result.dart';

/// Get a LoadTestResource
///
/// Uses Azure REST API version 2023-12-01-preview.
///
/// Other available API versions: 2022-12-01, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_loadtestservice_get_load_test_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadTestResult> getLoadTest(
  GetLoadTestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadTestResult.fromMap(result);
}

pulumi.Output<GetLoadTestResult> getLoadTestOutput(
  GetLoadTestArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTest',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadTestResult.fromMap);
}

/// Get a LoadTestMappingResource
///
/// Uses Azure REST API version 2023-12-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_loadtestservice_get_load_test_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadTestMappingResult> getLoadTestMapping(
  GetLoadTestMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTestMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadTestMappingResult.fromMap(result);
}

pulumi.Output<GetLoadTestMappingResult> getLoadTestMappingOutput(
  GetLoadTestMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTestMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadTestMappingResult.fromMap);
}

/// Get a LoadTestProfileMappingResource
///
/// Uses Azure REST API version 2023-12-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_loadtestservice_get_load_test_profile_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadTestProfileMappingResult> getLoadTestProfileMapping(
  GetLoadTestProfileMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTestProfileMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadTestProfileMappingResult.fromMap(result);
}

pulumi.Output<GetLoadTestProfileMappingResult> getLoadTestProfileMappingOutput(
  GetLoadTestProfileMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:loadtestservice:getLoadTestProfileMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadTestProfileMappingResult.fromMap);
}

/// Get a PlaywrightWorkspace
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-09-01, 2026-01-01-preview, 2026-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_loadtestservice_get_playwright_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlaywrightWorkspaceResult> getPlaywrightWorkspace(
  GetPlaywrightWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:loadtestservice:getPlaywrightWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlaywrightWorkspaceResult.fromMap(result);
}

pulumi.Output<GetPlaywrightWorkspaceResult> getPlaywrightWorkspaceOutput(
  GetPlaywrightWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:loadtestservice:getPlaywrightWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPlaywrightWorkspaceResult.fromMap);
}
