import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lab_args.dart';
import 'get_lab_plan_args.dart';
import 'get_lab_plan_result.dart';
import 'get_lab_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Returns the properties of a lab resource.
///
/// Uses Azure REST API version 2023-06-07.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_labservices_get_lab_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabResult> getLab(
  GetLabArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:labservices:getLab',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabResult.fromMap(result);
}

/// Retrieves the properties of a Lab Plan.
///
/// Uses Azure REST API version 2023-06-07.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_labservices_get_lab_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabPlanResult> getLabPlan(
  GetLabPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:labservices:getLabPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabPlanResult.fromMap(result);
}

/// Returns the properties of a lab Schedule.
///
/// Uses Azure REST API version 2023-06-07.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_labservices_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:labservices:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Returns the properties of a lab user.
///
/// Uses Azure REST API version 2023-06-07.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_labservices_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:labservices:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
