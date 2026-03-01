import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_retention_policy_args.dart';
import 'get_retention_policy_result.dart';
import 'get_scheduler_args.dart';
import 'get_scheduler_result.dart';
import 'get_task_hub_args.dart';
import 'get_task_hub_result.dart';

/// Get a Retention Policy
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_durabletask_get_retention_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRetentionPolicyResult> getRetentionPolicy(
  GetRetentionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:durabletask:getRetentionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRetentionPolicyResult.fromMap(result);
}

/// Get a Scheduler
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-04-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_durabletask_get_scheduler_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchedulerResult> getScheduler(
  GetSchedulerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:durabletask:getScheduler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchedulerResult.fromMap(result);
}

/// Get a Task Hub
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-04-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_durabletask_get_task_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskHubResult> getTaskHub(
  GetTaskHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:durabletask:getTaskHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskHubResult.fromMap(result);
}
