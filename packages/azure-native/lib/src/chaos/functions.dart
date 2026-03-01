import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capability_args.dart';
import 'get_capability_result.dart';
import 'get_experiment_args.dart';
import 'get_experiment_execution_details_args.dart';
import 'get_experiment_execution_details_result.dart';
import 'get_experiment_result.dart';
import 'get_private_access_args.dart';
import 'get_private_access_result.dart';
import 'get_target_args.dart';
import 'get_target_result.dart';

/// Get a Capability resource that extends a Target resource.
///
/// Uses Azure REST API version 2024-03-22-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_chaos_get_capability_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapabilityResult> getCapability(
  GetCapabilityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:chaos:getCapability',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapabilityResult.fromMap(result);
}

/// Get a Experiment resource.
///
/// Uses Azure REST API version 2024-03-22-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_chaos_get_experiment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:chaos:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}

/// Execution details of an experiment resource.
///
/// Uses Azure REST API version 2024-03-22-preview.
///
/// Other available API versions: 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_chaos_get_experiment_execution_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentExecutionDetailsResult> getExperimentExecutionDetails(
  GetExperimentExecutionDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:chaos:getExperimentExecutionDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentExecutionDetailsResult.fromMap(result);
}

/// Get a private access resource
///
/// Uses Azure REST API version 2024-03-22-preview.
///
/// Other available API versions: 2023-10-27-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_chaos_get_private_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateAccessResult> getPrivateAccess(
  GetPrivateAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:chaos:getPrivateAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateAccessResult.fromMap(result);
}

/// Get a Target resource that extends a tracked regional resource.
///
/// Uses Azure REST API version 2024-03-22-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_chaos_get_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:chaos:getTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}
