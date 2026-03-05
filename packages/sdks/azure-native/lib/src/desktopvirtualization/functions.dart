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
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'list_host_pool_registration_tokens_args.dart';
import 'list_host_pool_registration_tokens_result.dart';

/// Get an app attach package.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get an application.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get an application group.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a host pool.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Registration token of the host pool.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a msixpackage.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a private endpoint connection.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_host_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionByHostPoolResult>
getPrivateEndpointConnectionByHostPool(
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

/// Get a private endpoint connection.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionByWorkspaceResult>
getPrivateEndpointConnectionByWorkspace(
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

/// Get a scaling plan.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a ScalingPlanPersonalSchedule.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a ScalingPlanPooledSchedule.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a workspace.
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Operation to list the RegistrationTokens associated with the HostPool
///
/// Uses Azure REST API version 2024-04-03.
///
/// Other available API versions: 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
