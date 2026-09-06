import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_args.dart';
import 'get_agent_result.dart';
import 'get_agent_space_args.dart';
import 'get_agent_space_result.dart';
import 'get_agent_spaces_connector_args.dart';
import 'get_agent_spaces_connector_result.dart';
import 'get_agents_connector_args.dart';
import 'get_agents_connector_result.dart';
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
import 'list_agent_spaces_connector_all_secrets_args.dart';
import 'list_agent_spaces_connector_all_secrets_result.dart';
import 'list_agent_spaces_connector_secrets_args.dart';
import 'list_agent_spaces_connector_secrets_result.dart';
import 'list_agents_connector_secrets_args.dart';
import 'list_agents_connector_secrets_result.dart';
import 'list_agents_connector_with_secrets_by_agent_args.dart';
import 'list_agents_connector_with_secrets_by_agent_result.dart';
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

/// Get the properties of an Agent
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}

pulumi.Output<GetAgentResult> getAgentOutput(
  GetAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentResult.fromMap);
}

/// Get the properties of an Agent Space
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_agent_space_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentSpaceResult> getAgentSpace(
  GetAgentSpaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getAgentSpace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentSpaceResult.fromMap(result);
}

pulumi.Output<GetAgentSpaceResult> getAgentSpaceOutput(
  GetAgentSpaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getAgentSpace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentSpaceResult.fromMap);
}

/// Get the properties of an Agent Space Connector
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_agent_spaces_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentSpacesConnectorResult> getAgentSpacesConnector(
  GetAgentSpacesConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getAgentSpacesConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentSpacesConnectorResult.fromMap(result);
}

pulumi.Output<GetAgentSpacesConnectorResult> getAgentSpacesConnectorOutput(
  GetAgentSpacesConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getAgentSpacesConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentSpacesConnectorResult.fromMap);
}

/// Get the properties of an Agent Connector
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_agents_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentsConnectorResult> getAgentsConnector(
  GetAgentsConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:getAgentsConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentsConnectorResult.fromMap(result);
}

pulumi.Output<GetAgentsConnectorResult> getAgentsConnectorOutput(
  GetAgentsConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getAgentsConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentsConnectorResult.fromMap);
}

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

pulumi.Output<GetAppResiliencyResult> getAppResiliencyOutput(
  GetAppResiliencyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getAppResiliency',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppResiliencyResult.fromMap);
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

pulumi.Output<GetBuildResult> getBuildOutput(
  GetBuildArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getBuild',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildResult.fromMap);
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

pulumi.Output<GetBuilderResult> getBuilderOutput(
  GetBuilderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getBuilder',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuilderResult.fromMap);
}

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Get the properties of an connectedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectedEnvironmentResult> getConnectedEnvironmentOutput(
  GetConnectedEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectedEnvironmentResult.fromMap);
}

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environments_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentsCertificateResult> getConnectedEnvironmentsCertificate(
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

pulumi.Output<GetConnectedEnvironmentsCertificateResult> getConnectedEnvironmentsCertificateOutput(
  GetConnectedEnvironmentsCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectedEnvironmentsCertificateResult.fromMap);
}

/// Dapr Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_connected_environments_dapr_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedEnvironmentsDaprComponentResult> getConnectedEnvironmentsDaprComponent(
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

pulumi.Output<GetConnectedEnvironmentsDaprComponentResult> getConnectedEnvironmentsDaprComponentOutput(
  GetConnectedEnvironmentsDaprComponentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsDaprComponent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectedEnvironmentsDaprComponentResult.fromMap);
}

/// Get storage for a connectedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectedEnvironmentsStorageResult> getConnectedEnvironmentsStorageOutput(
  GetConnectedEnvironmentsStorageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getConnectedEnvironmentsStorage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectedEnvironmentsStorageResult.fromMap);
}

/// Container App.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetContainerAppResult> getContainerAppOutput(
  GetContainerAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getContainerApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerAppResult.fromMap);
}

/// Container App Auth Token.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetContainerAppAuthTokenResult> getContainerAppAuthTokenOutput(
  GetContainerAppAuthTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getContainerAppAuthToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerAppAuthTokenResult.fromMap);
}

/// Configuration settings for the Azure ContainerApp Service Authentication / Authorization feature.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetContainerAppsAuthConfigResult> getContainerAppsAuthConfigOutput(
  GetContainerAppsAuthConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsAuthConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerAppsAuthConfigResult.fromMap);
}

/// Container App session pool.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetContainerAppsSessionPoolResult> getContainerAppsSessionPoolOutput(
  GetContainerAppsSessionPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsSessionPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerAppsSessionPoolResult.fromMap);
}

/// Container App SourceControl.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetContainerAppsSourceControlResult> getContainerAppsSourceControlOutput(
  GetContainerAppsSourceControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getContainerAppsSourceControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerAppsSourceControlResult.fromMap);
}

/// Get the verification id of a subscription used for verifying custom domains
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetCustomDomainVerificationIdResult> getCustomDomainVerificationId(
  {
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

pulumi.Output<GetCustomDomainVerificationIdResult> getCustomDomainVerificationIdOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getCustomDomainVerificationId',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetCustomDomainVerificationIdResult.fromMap);
}

/// Dapr Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetDaprComponentResult> getDaprComponentOutput(
  GetDaprComponentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getDaprComponent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDaprComponentResult.fromMap);
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

pulumi.Output<GetDaprComponentResiliencyPolicyResult> getDaprComponentResiliencyPolicyOutput(
  GetDaprComponentResiliencyPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getDaprComponentResiliencyPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDaprComponentResiliencyPolicyResult.fromMap);
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

pulumi.Output<GetDaprSubscriptionResult> getDaprSubscriptionOutput(
  GetDaprSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getDaprSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDaprSubscriptionResult.fromMap);
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

pulumi.Output<GetDotNetComponentResult> getDotNetComponentOutput(
  GetDotNetComponentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getDotNetComponent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDotNetComponentResult.fromMap);
}

/// Advanced Ingress routing for path/header based routing for a Container App Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetHttpRouteConfigResult> getHttpRouteConfigOutput(
  GetHttpRouteConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getHttpRouteConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHttpRouteConfigResult.fromMap);
}

/// Java Component.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetJavaComponentResult> getJavaComponentOutput(
  GetJavaComponentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getJavaComponent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJavaComponentResult.fromMap);
}

/// Container App Job
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// A logic app extension resource
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetLogicAppResult> getLogicAppOutput(
  GetLogicAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getLogicApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogicAppResult.fromMap);
}

/// Gets the maintenance configuration of a ManagedEnvironment .
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMaintenanceConfigurationResult> getMaintenanceConfigurationOutput(
  GetMaintenanceConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getMaintenanceConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMaintenanceConfigurationResult.fromMap);
}

/// Managed certificates used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetManagedCertificateResult> getManagedCertificateOutput(
  GetManagedCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getManagedCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedCertificateResult.fromMap);
}

/// Get the properties of a Managed Environment used to host container apps.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetManagedEnvironmentResult> getManagedEnvironmentOutput(
  GetManagedEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedEnvironmentResult.fromMap);
}

/// Checks if resource name is available.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetManagedEnvironmentAuthTokenResult> getManagedEnvironmentAuthTokenOutput(
  GetManagedEnvironmentAuthTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentAuthToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedEnvironmentAuthTokenResult.fromMap);
}

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_get_managed_environment_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedEnvironmentPrivateEndpointConnectionResult> getManagedEnvironmentPrivateEndpointConnection(
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

pulumi.Output<GetManagedEnvironmentPrivateEndpointConnectionResult> getManagedEnvironmentPrivateEndpointConnectionOutput(
  GetManagedEnvironmentPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedEnvironmentPrivateEndpointConnectionResult.fromMap);
}

/// Get storage for a managedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetManagedEnvironmentsStorageResult> getManagedEnvironmentsStorageOutput(
  GetManagedEnvironmentsStorageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:getManagedEnvironmentsStorage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedEnvironmentsStorageResult.fromMap);
}

/// List all secrets for AgentSpace Connectors
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_agent_spaces_connector_all_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentSpacesConnectorAllSecretsResult> listAgentSpacesConnectorAllSecrets(
  ListAgentSpacesConnectorAllSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listAgentSpacesConnectorAllSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentSpacesConnectorAllSecretsResult.fromMap(result);
}

pulumi.Output<ListAgentSpacesConnectorAllSecretsResult> listAgentSpacesConnectorAllSecretsOutput(
  ListAgentSpacesConnectorAllSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listAgentSpacesConnectorAllSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAgentSpacesConnectorAllSecretsResult.fromMap);
}

/// List secrets for an Agent Space Connector
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_agent_spaces_connector_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentSpacesConnectorSecretsResult> listAgentSpacesConnectorSecrets(
  ListAgentSpacesConnectorSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listAgentSpacesConnectorSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentSpacesConnectorSecretsResult.fromMap(result);
}

pulumi.Output<ListAgentSpacesConnectorSecretsResult> listAgentSpacesConnectorSecretsOutput(
  ListAgentSpacesConnectorSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listAgentSpacesConnectorSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAgentSpacesConnectorSecretsResult.fromMap);
}

/// Get a Data Connector with secrets from an Agent
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_agents_connector_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentsConnectorSecretsResult> listAgentsConnectorSecrets(
  ListAgentsConnectorSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listAgentsConnectorSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentsConnectorSecretsResult.fromMap(result);
}

pulumi.Output<ListAgentsConnectorSecretsResult> listAgentsConnectorSecretsOutput(
  ListAgentsConnectorSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listAgentsConnectorSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAgentsConnectorSecretsResult.fromMap);
}

/// List all Data Connectors with secrets from an Agent
///
/// Uses Azure REST API version 2026-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_agents_connector_with_secrets_by_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentsConnectorWithSecretsByAgentResult> listAgentsConnectorWithSecretsByAgent(
  ListAgentsConnectorWithSecretsByAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:app:listAgentsConnectorWithSecretsByAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentsConnectorWithSecretsByAgentResult.fromMap(result);
}

pulumi.Output<ListAgentsConnectorWithSecretsByAgentResult> listAgentsConnectorWithSecretsByAgentOutput(
  ListAgentsConnectorWithSecretsByAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listAgentsConnectorWithSecretsByAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAgentsConnectorWithSecretsByAgentResult.fromMap);
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

pulumi.Output<ListBuildAuthTokenResult> listBuildAuthTokenOutput(
  ListBuildAuthTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listBuildAuthToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBuildAuthTokenResult.fromMap);
}

/// Dapr component Secrets Collection for ListSecrets Action.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_connected_environments_dapr_component_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectedEnvironmentsDaprComponentSecretsResult> listConnectedEnvironmentsDaprComponentSecrets(
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

pulumi.Output<ListConnectedEnvironmentsDaprComponentSecretsResult> listConnectedEnvironmentsDaprComponentSecretsOutput(
  ListConnectedEnvironmentsDaprComponentSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listConnectedEnvironmentsDaprComponentSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectedEnvironmentsDaprComponentSecretsResult.fromMap);
}

/// Custom domain analysis.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_app_list_container_app_custom_host_name_analysis_args_doc}
/// [options] Invoke options controlling this call.
Future<ListContainerAppCustomHostNameAnalysisResult> listContainerAppCustomHostNameAnalysis(
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

pulumi.Output<ListContainerAppCustomHostNameAnalysisResult> listContainerAppCustomHostNameAnalysisOutput(
  ListContainerAppCustomHostNameAnalysisArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listContainerAppCustomHostNameAnalysis',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListContainerAppCustomHostNameAnalysisResult.fromMap);
}

/// Container App Secrets Collection ARM resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListContainerAppSecretsResult> listContainerAppSecretsOutput(
  ListContainerAppSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listContainerAppSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListContainerAppSecretsResult.fromMap);
}

/// Dapr component Secrets Collection for ListSecrets Action.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListDaprComponentSecretsResult> listDaprComponentSecretsOutput(
  ListDaprComponentSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listDaprComponentSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDaprComponentSecretsResult.fromMap);
}

/// Container Apps Job Secrets Collection ARM resource.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListJobSecretsResult> listJobSecretsOutput(
  ListJobSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listJobSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListJobSecretsResult.fromMap);
}

/// Workflow properties definition.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListLogicAppWorkflowsConnectionsResult> listLogicAppWorkflowsConnectionsOutput(
  ListLogicAppWorkflowsConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:app:listLogicAppWorkflowsConnections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListLogicAppWorkflowsConnectionsResult.fromMap);
}
