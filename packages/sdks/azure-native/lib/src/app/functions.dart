import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_resiliency_args.dart';
import 'get_app_resiliency_result.dart';
import 'get_build_args.dart';
import 'get_build_result.dart';
import 'get_builder_args.dart';
import 'get_builder_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_connected_environment_args.dart';
import 'get_connected_environment_result.dart';
import 'get_connected_environments_certificate_args.dart';
import 'get_connected_environments_certificate_result.dart';
import 'get_connected_environments_dapr_component_args.dart';
import 'get_connected_environments_dapr_component_result.dart';
import 'get_connected_environments_storage_args.dart';
import 'get_connected_environments_storage_result.dart';
import 'get_container_app_args.dart';
import 'get_container_app_auth_token_args.dart';
import 'get_container_app_auth_token_result.dart';
import 'get_container_app_result.dart';
import 'get_container_apps_auth_config_args.dart';
import 'get_container_apps_auth_config_result.dart';
import 'get_container_apps_session_pool_args.dart';
import 'get_container_apps_session_pool_result.dart';
import 'get_container_apps_source_control_args.dart';
import 'get_container_apps_source_control_result.dart';
import 'get_custom_domain_verification_id_result.dart';
import 'get_dapr_component_args.dart';
import 'get_dapr_component_resiliency_policy_args.dart';
import 'get_dapr_component_resiliency_policy_result.dart';
import 'get_dapr_component_result.dart';
import 'get_dapr_subscription_args.dart';
import 'get_dapr_subscription_result.dart';
import 'get_dot_net_component_args.dart';
import 'get_dot_net_component_result.dart';
import 'get_http_route_config_args.dart';
import 'get_http_route_config_result.dart';
import 'get_java_component_args.dart';
import 'get_java_component_result.dart';
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'get_logic_app_args.dart';
import 'get_logic_app_result.dart';
import 'get_maintenance_configuration_args.dart';
import 'get_maintenance_configuration_result.dart';
import 'get_managed_certificate_args.dart';
import 'get_managed_certificate_result.dart';
import 'get_managed_environment_args.dart';
import 'get_managed_environment_auth_token_args.dart';
import 'get_managed_environment_auth_token_result.dart';
import 'get_managed_environment_private_endpoint_connection_args.dart';
import 'get_managed_environment_private_endpoint_connection_result.dart';
import 'get_managed_environment_result.dart';
import 'get_managed_environments_storage_args.dart';
import 'get_managed_environments_storage_result.dart';
import 'list_build_auth_token_args.dart';
import 'list_build_auth_token_result.dart';
import 'list_connected_environments_dapr_component_secrets_args.dart';
import 'list_connected_environments_dapr_component_secrets_result.dart';
import 'list_container_app_custom_host_name_analysis_args.dart';
import 'list_container_app_custom_host_name_analysis_result.dart';
import 'list_container_app_secrets_args.dart';
import 'list_container_app_secrets_result.dart';
import 'list_dapr_component_secrets_args.dart';
import 'list_dapr_component_secrets_result.dart';
import 'list_job_secrets_args.dart';
import 'list_job_secrets_result.dart';
import 'list_logic_app_workflows_connections_args.dart';
import 'list_logic_app_workflows_connections_result.dart';

/// Get container app resiliency policy.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_app_resiliency_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResiliencyResult> getAppResiliency(
  GetAppResiliencyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getAppResiliency',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResiliencyResult.fromMap(result);
}

/// Get a BuildResource
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_build_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildResult> getBuild(
  GetBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildResult.fromMap(result);
}

/// Get a BuilderResource
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_builder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuilderResult> getBuilder(
  GetBuilderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getBuilder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuilderResult.fromMap(result);
}

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Get the properties of an connectedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentResult> getConnectedEnvironment(
  GetConnectedEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedEnvironmentResult.fromMap(result);
}

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environments_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentsCertificateResult>
getConnectedEnvironmentsCertificate(
  GetConnectedEnvironmentsCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedEnvironmentsCertificateResult.fromMap(result);
}

/// Dapr Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environments_dapr_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentsDaprComponentResult>
getConnectedEnvironmentsDaprComponent(
  GetConnectedEnvironmentsDaprComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsDaprComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedEnvironmentsDaprComponentResult.fromMap(result);
}

/// Get storage for a connectedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environments_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentsStorageResult> getConnectedEnvironmentsStorage(
  GetConnectedEnvironmentsStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedEnvironmentsStorageResult.fromMap(result);
}

/// Container App.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_container_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerAppResult> getContainerApp(
  GetContainerAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getContainerApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerAppResult.fromMap(result);
}

/// Container App Auth Token.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_container_app_auth_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerAppAuthTokenResult> getContainerAppAuthToken(
  GetContainerAppAuthTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getContainerAppAuthToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerAppAuthTokenResult.fromMap(result);
}

/// Configuration settings for the Azure ContainerApp Service Authentication / Authorization feature.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_container_apps_auth_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerAppsAuthConfigResult> getContainerAppsAuthConfig(
  GetContainerAppsAuthConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsAuthConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerAppsAuthConfigResult.fromMap(result);
}

/// Container App session pool.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_container_apps_session_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerAppsSessionPoolResult> getContainerAppsSessionPool(
  GetContainerAppsSessionPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsSessionPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerAppsSessionPoolResult.fromMap(result);
}

/// Container App SourceControl.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_container_apps_source_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerAppsSourceControlResult> getContainerAppsSourceControl(
  GetContainerAppsSourceControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsSourceControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerAppsSourceControlResult.fromMap(result);
}

/// Get the verification id of a subscription used for verifying custom domains
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetCustomDomainVerificationIdResult> getCustomDomainVerificationId({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getCustomDomainVerificationId',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainVerificationIdResult.fromMap(result);
}

/// Dapr Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_dapr_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDaprComponentResult> getDaprComponent(
  GetDaprComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getDaprComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDaprComponentResult.fromMap(result);
}

/// Dapr Component Resiliency Policy.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_dapr_component_resiliency_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDaprComponentResiliencyPolicyResult> getDaprComponentResiliencyPolicy(
  GetDaprComponentResiliencyPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getDaprComponentResiliencyPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDaprComponentResiliencyPolicyResult.fromMap(result);
}

/// Dapr PubSub Event Subscription.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_dapr_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDaprSubscriptionResult> getDaprSubscription(
  GetDaprSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getDaprSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDaprSubscriptionResult.fromMap(result);
}

/// .NET Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_dot_net_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDotNetComponentResult> getDotNetComponent(
  GetDotNetComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getDotNetComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDotNetComponentResult.fromMap(result);
}

/// Advanced Ingress routing for path/header based routing for a Container App Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_http_route_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpRouteConfigResult> getHttpRouteConfig(
  GetHttpRouteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getHttpRouteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteConfigResult.fromMap(result);
}

/// Java Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_java_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJavaComponentResult> getJavaComponent(
  GetJavaComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getJavaComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJavaComponentResult.fromMap(result);
}

/// Container App Job
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// A logic app extension resource
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_logic_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogicAppResult> getLogicApp(
  GetLogicAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getLogicApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogicAppResult.fromMap(result);
}

/// Gets the maintenance configuration of a ManagedEnvironment .
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_maintenance_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaintenanceConfigurationResult> getMaintenanceConfiguration(
  GetMaintenanceConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getMaintenanceConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaintenanceConfigurationResult.fromMap(result);
}

/// Managed certificates used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedCertificateResult> getManagedCertificate(
  GetManagedCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getManagedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedCertificateResult.fromMap(result);
}

/// Get the properties of a Managed Environment used to host container apps.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedEnvironmentResult> getManagedEnvironment(
  GetManagedEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedEnvironmentResult.fromMap(result);
}

/// Checks if resource name is available.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_environment_auth_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedEnvironmentAuthTokenResult> getManagedEnvironmentAuthToken(
  GetManagedEnvironmentAuthTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentAuthToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedEnvironmentAuthTokenResult.fromMap(result);
}

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_environment_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedEnvironmentPrivateEndpointConnectionResult>
getManagedEnvironmentPrivateEndpointConnection(
  GetManagedEnvironmentPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedEnvironmentPrivateEndpointConnectionResult.fromMap(result);
}

/// Get storage for a managedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_environments_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedEnvironmentsStorageResult> getManagedEnvironmentsStorage(
  GetManagedEnvironmentsStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentsStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedEnvironmentsStorageResult.fromMap(result);
}

/// Gets the token used to connect to the endpoint where source code can be uploaded for a build.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_build_auth_token_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBuildAuthTokenResult> listBuildAuthToken(
  ListBuildAuthTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listBuildAuthToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBuildAuthTokenResult.fromMap(result);
}

/// Dapr component Secrets Collection for ListSecrets Action.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_connected_environments_dapr_component_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectedEnvironmentsDaprComponentSecretsResult>
listConnectedEnvironmentsDaprComponentSecrets(
  ListConnectedEnvironmentsDaprComponentSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listConnectedEnvironmentsDaprComponentSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectedEnvironmentsDaprComponentSecretsResult.fromMap(result);
}

/// Custom domain analysis.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_container_app_custom_host_name_analysis_args_doc}
/// [options] Invoke options controlling this call.
Future<ListContainerAppCustomHostNameAnalysisResult>
listContainerAppCustomHostNameAnalysis(
  ListContainerAppCustomHostNameAnalysisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listContainerAppCustomHostNameAnalysis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListContainerAppCustomHostNameAnalysisResult.fromMap(result);
}

/// Container App Secrets Collection ARM resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_container_app_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListContainerAppSecretsResult> listContainerAppSecrets(
  ListContainerAppSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listContainerAppSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListContainerAppSecretsResult.fromMap(result);
}

/// Dapr component Secrets Collection for ListSecrets Action.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_dapr_component_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDaprComponentSecretsResult> listDaprComponentSecrets(
  ListDaprComponentSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listDaprComponentSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDaprComponentSecretsResult.fromMap(result);
}

/// Container Apps Job Secrets Collection ARM resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_job_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListJobSecretsResult> listJobSecrets(
  ListJobSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listJobSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListJobSecretsResult.fromMap(result);
}

/// Workflow properties definition.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_logic_app_workflows_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLogicAppWorkflowsConnectionsResult> listLogicAppWorkflowsConnections(
  ListLogicAppWorkflowsConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listLogicAppWorkflowsConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLogicAppWorkflowsConnectionsResult.fromMap(result);
}
