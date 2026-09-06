import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_attach_package_args.dart';
import 'get_app_attach_package_result.dart';
import 'get_application_args.dart';
import 'get_application_group_args.dart';
import 'get_application_group_result.dart';
import 'get_application_result.dart';
import 'get_host_pool_args.dart';
import 'get_host_pool_registration_token_args.dart';
import 'get_host_pool_registration_token_result.dart';
import 'get_host_pool_result.dart';
import 'get_msixpackage_args.dart';
import 'get_msixpackage_result.dart';
import 'get_private_endpoint_connection_by_host_pool_args.dart';
import 'get_private_endpoint_connection_by_host_pool_result.dart';
import 'get_private_endpoint_connection_by_workspace_args.dart';
import 'get_private_endpoint_connection_by_workspace_result.dart';
import 'get_scaling_plan_args.dart';
import 'get_scaling_plan_personal_schedule_args.dart';
import 'get_scaling_plan_personal_schedule_result.dart';
import 'get_scaling_plan_pooled_schedule_args.dart';
import 'get_scaling_plan_pooled_schedule_result.dart';
import 'get_scaling_plan_result.dart';
import 'get_session_host_args.dart';
import 'get_session_host_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'list_host_pool_registration_tokens_args.dart';
import 'list_host_pool_registration_tokens_result.dart';
import 'list_session_host_single_registration_tokens_args.dart';
import 'list_session_host_single_registration_tokens_result.dart';

/// Get an app attach package.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_app_attach_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppAttachPackageResult> getAppAttachPackage(
  GetAppAttachPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getAppAttachPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppAttachPackageResult.fromMap(result);
}

pulumi.Output<GetAppAttachPackageResult> getAppAttachPackageOutput(
  GetAppAttachPackageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getAppAttachPackage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppAttachPackageResult.fromMap);
}

/// Get an application.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

pulumi.Output<GetApplicationResult> getApplicationOutput(
  GetApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationResult.fromMap);
}

/// Get an application group.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_application_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGroupResult> getApplicationGroup(
  GetApplicationGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getApplicationGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGroupResult.fromMap(result);
}

pulumi.Output<GetApplicationGroupResult> getApplicationGroupOutput(
  GetApplicationGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getApplicationGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationGroupResult.fromMap);
}

/// Get a host pool.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_host_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostPoolResult> getHostPool(
  GetHostPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getHostPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostPoolResult.fromMap(result);
}

pulumi.Output<GetHostPoolResult> getHostPoolOutput(
  GetHostPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getHostPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostPoolResult.fromMap);
}

/// Registration token of the host pool.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_host_pool_registration_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostPoolRegistrationTokenResult> getHostPoolRegistrationToken(
  GetHostPoolRegistrationTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getHostPoolRegistrationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostPoolRegistrationTokenResult.fromMap(result);
}

pulumi.Output<GetHostPoolRegistrationTokenResult> getHostPoolRegistrationTokenOutput(
  GetHostPoolRegistrationTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getHostPoolRegistrationToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostPoolRegistrationTokenResult.fromMap);
}

/// Get a msixpackage.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_msixpackage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMSIXPackageResult> getMSIXPackage(
  GetMSIXPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getMSIXPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMSIXPackageResult.fromMap(result);
}

pulumi.Output<GetMSIXPackageResult> getMSIXPackageOutput(
  GetMSIXPackageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getMSIXPackage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMSIXPackageResult.fromMap);
}

/// Get a private endpoint connection.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_host_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionByHostPoolResult> getPrivateEndpointConnectionByHostPool(
  GetPrivateEndpointConnectionByHostPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getPrivateEndpointConnectionByHostPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionByHostPoolResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionByHostPoolResult> getPrivateEndpointConnectionByHostPoolOutput(
  GetPrivateEndpointConnectionByHostPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getPrivateEndpointConnectionByHostPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionByHostPoolResult.fromMap);
}

/// Get a private endpoint connection.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionByWorkspaceResult> getPrivateEndpointConnectionByWorkspace(
  GetPrivateEndpointConnectionByWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getPrivateEndpointConnectionByWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionByWorkspaceResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionByWorkspaceResult> getPrivateEndpointConnectionByWorkspaceOutput(
  GetPrivateEndpointConnectionByWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getPrivateEndpointConnectionByWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionByWorkspaceResult.fromMap);
}

/// Get a scaling plan.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_scaling_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingPlanResult> getScalingPlan(
  GetScalingPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingPlanResult.fromMap(result);
}

pulumi.Output<GetScalingPlanResult> getScalingPlanOutput(
  GetScalingPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScalingPlanResult.fromMap);
}

/// Get a ScalingPlanPersonalSchedule.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_scaling_plan_personal_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingPlanPersonalScheduleResult> getScalingPlanPersonalSchedule(
  GetScalingPlanPersonalScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlanPersonalSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingPlanPersonalScheduleResult.fromMap(result);
}

pulumi.Output<GetScalingPlanPersonalScheduleResult> getScalingPlanPersonalScheduleOutput(
  GetScalingPlanPersonalScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlanPersonalSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScalingPlanPersonalScheduleResult.fromMap);
}

/// Get a ScalingPlanPooledSchedule.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_scaling_plan_pooled_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingPlanPooledScheduleResult> getScalingPlanPooledSchedule(
  GetScalingPlanPooledScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlanPooledSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingPlanPooledScheduleResult.fromMap(result);
}

pulumi.Output<GetScalingPlanPooledScheduleResult> getScalingPlanPooledScheduleOutput(
  GetScalingPlanPooledScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getScalingPlanPooledSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScalingPlanPooledScheduleResult.fromMap);
}

/// Get a session host.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_session_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionHostResult> getSessionHost(
  GetSessionHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getSessionHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionHostResult.fromMap(result);
}

pulumi.Output<GetSessionHostResult> getSessionHostOutput(
  GetSessionHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getSessionHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionHostResult.fromMap);
}

/// Get a workspace.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:getWorkspace',
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
    'azure-native:desktopvirtualization:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Operation to list the RegistrationTokens associated with the HostPool
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_list_host_pool_registration_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<ListHostPoolRegistrationTokensResult> listHostPoolRegistrationTokens(
  ListHostPoolRegistrationTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:listHostPoolRegistrationTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListHostPoolRegistrationTokensResult.fromMap(result);
}

pulumi.Output<ListHostPoolRegistrationTokensResult> listHostPoolRegistrationTokensOutput(
  ListHostPoolRegistrationTokensArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:listHostPoolRegistrationTokens',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListHostPoolRegistrationTokensResult.fromMap);
}

/// Operation to list the scoped RegistrationTokens associated with the SessionHost.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_list_session_host_single_registration_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSessionHostSingleRegistrationTokensResult> listSessionHostSingleRegistrationTokens(
  ListSessionHostSingleRegistrationTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:listSessionHostSingleRegistrationTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSessionHostSingleRegistrationTokensResult.fromMap(result);
}

pulumi.Output<ListSessionHostSingleRegistrationTokensResult> listSessionHostSingleRegistrationTokensOutput(
  ListSessionHostSingleRegistrationTokensArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:desktopvirtualization:listSessionHostSingleRegistrationTokens',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSessionHostSingleRegistrationTokensResult.fromMap);
}
