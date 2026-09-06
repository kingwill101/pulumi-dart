import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_solution_args.dart';
import 'get_solution_result.dart';
import 'get_target_args.dart';
import 'get_target_result.dart';

/// Get a Instance
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsorchestrator_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsorchestrator:getInstance',
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
    'azure-native:iotoperationsorchestrator:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Get a Solution
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsorchestrator_get_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionResult> getSolution(
  GetSolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsorchestrator:getSolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionResult.fromMap(result);
}

pulumi.Output<GetSolutionResult> getSolutionOutput(
  GetSolutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperationsorchestrator:getSolution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSolutionResult.fromMap);
}

/// Get a Target
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsorchestrator_get_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsorchestrator:getTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}

pulumi.Output<GetTargetResult> getTargetOutput(
  GetTargetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperationsorchestrator:getTarget',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetResult.fromMap);
}
