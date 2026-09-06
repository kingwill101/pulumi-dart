import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_drill_args.dart';
import 'get_drill_result.dart';
import 'get_enrollment_args.dart';
import 'get_enrollment_result.dart';
import 'get_goal_assignment_args.dart';
import 'get_goal_assignment_result.dart';
import 'get_goal_template_args.dart';
import 'get_goal_template_result.dart';
import 'get_recovery_plan_args.dart';
import 'get_recovery_plan_result.dart';
import 'get_usage_plan_args.dart';
import 'get_usage_plan_result.dart';

/// Get a Drill
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_drill_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDrillResult> getDrill(
  GetDrillArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getDrill',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDrillResult.fromMap(result);
}

pulumi.Output<GetDrillResult> getDrillOutput(
  GetDrillArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getDrill',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDrillResult.fromMap);
}

/// Get an Enrollment.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_enrollment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnrollmentResult> getEnrollment(
  GetEnrollmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getEnrollment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnrollmentResult.fromMap(result);
}

pulumi.Output<GetEnrollmentResult> getEnrollmentOutput(
  GetEnrollmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getEnrollment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnrollmentResult.fromMap);
}

/// Get a GoalAssignment
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_goal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoalAssignmentResult> getGoalAssignment(
  GetGoalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getGoalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoalAssignmentResult.fromMap(result);
}

pulumi.Output<GetGoalAssignmentResult> getGoalAssignmentOutput(
  GetGoalAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getGoalAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoalAssignmentResult.fromMap);
}

/// Get a GoalTemplate
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_goal_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGoalTemplateResult> getGoalTemplate(
  GetGoalTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getGoalTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGoalTemplateResult.fromMap(result);
}

pulumi.Output<GetGoalTemplateResult> getGoalTemplateOutput(
  GetGoalTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getGoalTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGoalTemplateResult.fromMap);
}

/// Get a RecoveryPlan
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_recovery_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecoveryPlanResult> getRecoveryPlan(
  GetRecoveryPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getRecoveryPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecoveryPlanResult.fromMap(result);
}

pulumi.Output<GetRecoveryPlanResult> getRecoveryPlanOutput(
  GetRecoveryPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getRecoveryPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRecoveryPlanResult.fromMap);
}

/// Get a UsagePlan
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureresiliencemanagement_get_usage_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsagePlanResult> getUsagePlan(
  GetUsagePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getUsagePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsagePlanResult.fromMap(result);
}

pulumi.Output<GetUsagePlanResult> getUsagePlanOutput(
  GetUsagePlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azureresiliencemanagement:getUsagePlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUsagePlanResult.fromMap);
}
