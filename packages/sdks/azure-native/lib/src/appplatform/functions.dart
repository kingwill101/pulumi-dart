import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_portal_args.dart';
import 'get_api_portal_custom_domain_args.dart';
import 'get_api_portal_custom_domain_result.dart';
import 'get_api_portal_result.dart';
import 'get_apm_args.dart';
import 'get_apm_result.dart';
import 'get_app_args.dart';
import 'get_app_resource_upload_url_args.dart';
import 'get_app_resource_upload_url_result.dart';
import 'get_app_result.dart';
import 'get_application_accelerator_args.dart';
import 'get_application_accelerator_result.dart';
import 'get_application_live_view_args.dart';
import 'get_application_live_view_result.dart';
import 'get_binding_args.dart';
import 'get_binding_result.dart';
import 'get_build_service_agent_pool_args.dart';
import 'get_build_service_agent_pool_result.dart';
import 'get_build_service_build_args.dart';
import 'get_build_service_build_result.dart';
import 'get_build_service_build_result_log_args.dart';
import 'get_build_service_build_result_log_result.dart';
import 'get_build_service_builder_args.dart';
import 'get_build_service_builder_result.dart';
import 'get_build_service_resource_upload_url_args.dart';
import 'get_build_service_resource_upload_url_result.dart';
import 'get_buildpack_binding_args.dart';
import 'get_buildpack_binding_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_config_server_args.dart';
import 'get_config_server_result.dart';
import 'get_configuration_service_args.dart';
import 'get_configuration_service_result.dart';
import 'get_container_registry_args.dart';
import 'get_container_registry_result.dart';
import 'get_custom_domain_args.dart';
import 'get_custom_domain_result.dart';
import 'get_customized_accelerator_args.dart';
import 'get_customized_accelerator_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_log_file_url_args.dart';
import 'get_deployment_log_file_url_result.dart';
import 'get_deployment_remote_debugging_config_args.dart';
import 'get_deployment_remote_debugging_config_result.dart';
import 'get_deployment_result.dart';
import 'get_dev_tool_portal_args.dart';
import 'get_dev_tool_portal_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_custom_domain_args.dart';
import 'get_gateway_custom_domain_result.dart';
import 'get_gateway_result.dart';
import 'get_gateway_route_config_args.dart';
import 'get_gateway_route_config_result.dart';
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'get_monitoring_setting_args.dart';
import 'get_monitoring_setting_result.dart';
import 'get_service_args.dart';
import 'get_service_registry_args.dart';
import 'get_service_registry_result.dart';
import 'get_service_result.dart';
import 'get_storage_args.dart';
import 'get_storage_result.dart';
import 'list_apm_secret_keys_args.dart';
import 'list_apm_secret_keys_result.dart';
import 'list_build_service_builder_deployments_args.dart';
import 'list_build_service_builder_deployments_result.dart';
import 'list_job_env_secrets_args.dart';
import 'list_job_env_secrets_result.dart';
import 'list_job_execution_env_secrets_args.dart';
import 'list_job_execution_env_secrets_result.dart';
import 'list_service_globally_enabled_apms_args.dart';
import 'list_service_globally_enabled_apms_result.dart';
import 'list_service_test_keys_args.dart';
import 'list_service_test_keys_result.dart';

/// Get the API portal and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_api_portal_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiPortalResult> getApiPortal(
  GetApiPortalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApiPortal',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiPortalResult.fromMap(result);
}

pulumi.Output<GetApiPortalResult> getApiPortalOutput(
  GetApiPortalArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApiPortal',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiPortalResult.fromMap);
}

/// Get the API portal custom domain.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_api_portal_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiPortalCustomDomainResult> getApiPortalCustomDomain(
  GetApiPortalCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApiPortalCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiPortalCustomDomainResult.fromMap(result);
}

pulumi.Output<GetApiPortalCustomDomainResult> getApiPortalCustomDomainOutput(
  GetApiPortalCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApiPortalCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiPortalCustomDomainResult.fromMap);
}

/// Get the APM by name.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_apm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApmResult> getApm(
  GetApmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApmResult.fromMap(result);
}

pulumi.Output<GetApmResult> getApmOutput(
  GetApmArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApm',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApmResult.fromMap);
}

/// Get an App and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

pulumi.Output<GetAppResult> getAppOutput(
  GetAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppResult.fromMap);
}

/// Get an resource upload URL for an App, which may be artifacts or source archive.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_app_resource_upload_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResourceUploadUrlResult> getAppResourceUploadUrl(
  GetAppResourceUploadUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getAppResourceUploadUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResourceUploadUrlResult.fromMap(result);
}

pulumi.Output<GetAppResourceUploadUrlResult> getAppResourceUploadUrlOutput(
  GetAppResourceUploadUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getAppResourceUploadUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppResourceUploadUrlResult.fromMap);
}

/// Get the application accelerator.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_application_accelerator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationAcceleratorResult> getApplicationAccelerator(
  GetApplicationAcceleratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApplicationAccelerator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationAcceleratorResult.fromMap(result);
}

pulumi.Output<GetApplicationAcceleratorResult> getApplicationAcceleratorOutput(
  GetApplicationAcceleratorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApplicationAccelerator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationAcceleratorResult.fromMap);
}

/// Get the Application Live  and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_application_live_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationLiveViewResult> getApplicationLiveView(
  GetApplicationLiveViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getApplicationLiveView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationLiveViewResult.fromMap(result);
}

pulumi.Output<GetApplicationLiveViewResult> getApplicationLiveViewOutput(
  GetApplicationLiveViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getApplicationLiveView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationLiveViewResult.fromMap);
}

/// Get a Binding and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBindingResult> getBinding(
  GetBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingResult.fromMap(result);
}

pulumi.Output<GetBindingResult> getBindingOutput(
  GetBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBindingResult.fromMap);
}

/// Get build service agent pool.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_build_service_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildServiceAgentPoolResult> getBuildServiceAgentPool(
  GetBuildServiceAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildServiceAgentPoolResult.fromMap(result);
}

pulumi.Output<GetBuildServiceAgentPoolResult> getBuildServiceAgentPoolOutput(
  GetBuildServiceAgentPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceAgentPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildServiceAgentPoolResult.fromMap);
}

/// Get a KPack build.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_build_service_build_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildServiceBuildResult> getBuildServiceBuild(
  GetBuildServiceBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildServiceBuildResult.fromMap(result);
}

pulumi.Output<GetBuildServiceBuildResult> getBuildServiceBuildOutput(
  GetBuildServiceBuildArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuild',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildServiceBuildResult.fromMap);
}

/// Get a KPack build result log download URL.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_build_service_build_result_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildServiceBuildResultLogResult> getBuildServiceBuildResultLog(
  GetBuildServiceBuildResultLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuildResultLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildServiceBuildResultLogResult.fromMap(result);
}

pulumi.Output<GetBuildServiceBuildResultLogResult> getBuildServiceBuildResultLogOutput(
  GetBuildServiceBuildResultLogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuildResultLog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildServiceBuildResultLogResult.fromMap);
}

/// Get a KPack builder.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_build_service_builder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildServiceBuilderResult> getBuildServiceBuilder(
  GetBuildServiceBuilderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuilder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildServiceBuilderResult.fromMap(result);
}

pulumi.Output<GetBuildServiceBuilderResult> getBuildServiceBuilderOutput(
  GetBuildServiceBuilderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceBuilder',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildServiceBuilderResult.fromMap);
}

/// Get an resource upload URL for build service, which may be artifacts or source archive.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_build_service_resource_upload_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildServiceResourceUploadUrlResult> getBuildServiceResourceUploadUrl(
  GetBuildServiceResourceUploadUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceResourceUploadUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildServiceResourceUploadUrlResult.fromMap(result);
}

pulumi.Output<GetBuildServiceResourceUploadUrlResult> getBuildServiceResourceUploadUrlOutput(
  GetBuildServiceResourceUploadUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildServiceResourceUploadUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildServiceResourceUploadUrlResult.fromMap);
}

/// Get a buildpack binding by name.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_buildpack_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildpackBindingResult> getBuildpackBinding(
  GetBuildpackBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildpackBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildpackBindingResult.fromMap(result);
}

pulumi.Output<GetBuildpackBindingResult> getBuildpackBindingOutput(
  GetBuildpackBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getBuildpackBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBuildpackBindingResult.fromMap);
}

/// Get the certificate resource.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getCertificate',
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
    'azure-native:appplatform:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Get the config server and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_config_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigServerResult> getConfigServer(
  GetConfigServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getConfigServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigServerResult.fromMap(result);
}

pulumi.Output<GetConfigServerResult> getConfigServerOutput(
  GetConfigServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getConfigServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigServerResult.fromMap);
}

/// Get the Application Configuration Service and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_configuration_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationServiceResult> getConfigurationService(
  GetConfigurationServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getConfigurationService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationServiceResult.fromMap(result);
}

pulumi.Output<GetConfigurationServiceResult> getConfigurationServiceOutput(
  GetConfigurationServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getConfigurationService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationServiceResult.fromMap);
}

/// Get the container registries resource.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_container_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerRegistryResult> getContainerRegistry(
  GetContainerRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getContainerRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRegistryResult.fromMap(result);
}

pulumi.Output<GetContainerRegistryResult> getContainerRegistryOutput(
  GetContainerRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getContainerRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContainerRegistryResult.fromMap);
}

/// Get the custom domain of one lifecycle application.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomDomainResult> getCustomDomain(
  GetCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainResult.fromMap(result);
}

pulumi.Output<GetCustomDomainResult> getCustomDomainOutput(
  GetCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomDomainResult.fromMap);
}

/// Get the customized accelerator.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_customized_accelerator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomizedAcceleratorResult> getCustomizedAccelerator(
  GetCustomizedAcceleratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getCustomizedAccelerator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomizedAcceleratorResult.fromMap(result);
}

pulumi.Output<GetCustomizedAcceleratorResult> getCustomizedAcceleratorOutput(
  GetCustomizedAcceleratorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getCustomizedAccelerator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomizedAcceleratorResult.fromMap);
}

/// Get a Deployment and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

pulumi.Output<GetDeploymentResult> getDeploymentOutput(
  GetDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResult.fromMap);
}

/// Get deployment log file URL
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_deployment_log_file_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentLogFileUrlResult> getDeploymentLogFileUrl(
  GetDeploymentLogFileUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getDeploymentLogFileUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentLogFileUrlResult.fromMap(result);
}

pulumi.Output<GetDeploymentLogFileUrlResult> getDeploymentLogFileUrlOutput(
  GetDeploymentLogFileUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getDeploymentLogFileUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentLogFileUrlResult.fromMap);
}

/// Get remote debugging config.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_deployment_remote_debugging_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentRemoteDebuggingConfigResult> getDeploymentRemoteDebuggingConfig(
  GetDeploymentRemoteDebuggingConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getDeploymentRemoteDebuggingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentRemoteDebuggingConfigResult.fromMap(result);
}

pulumi.Output<GetDeploymentRemoteDebuggingConfigResult> getDeploymentRemoteDebuggingConfigOutput(
  GetDeploymentRemoteDebuggingConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getDeploymentRemoteDebuggingConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentRemoteDebuggingConfigResult.fromMap);
}

/// Get the Application Live  and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_dev_tool_portal_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevToolPortalResult> getDevToolPortal(
  GetDevToolPortalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getDevToolPortal',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevToolPortalResult.fromMap(result);
}

pulumi.Output<GetDevToolPortalResult> getDevToolPortalOutput(
  GetDevToolPortalArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getDevToolPortal',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevToolPortalResult.fromMap);
}

/// Get the Spring Cloud Gateway and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Get the Spring Cloud Gateway custom domain.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_gateway_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayCustomDomainResult> getGatewayCustomDomain(
  GetGatewayCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getGatewayCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayCustomDomainResult.fromMap(result);
}

pulumi.Output<GetGatewayCustomDomainResult> getGatewayCustomDomainOutput(
  GetGatewayCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getGatewayCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayCustomDomainResult.fromMap);
}

/// Get the Spring Cloud Gateway route configs.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_gateway_route_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayRouteConfigResult> getGatewayRouteConfig(
  GetGatewayRouteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getGatewayRouteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayRouteConfigResult.fromMap(result);
}

pulumi.Output<GetGatewayRouteConfigResult> getGatewayRouteConfigOutput(
  GetGatewayRouteConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getGatewayRouteConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayRouteConfigResult.fromMap);
}

/// Get a Job and its properties.
///
/// Uses Azure REST API version 2024-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getJob',
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
    'azure-native:appplatform:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Get the Monitoring Setting and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_monitoring_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitoringSettingResult> getMonitoringSetting(
  GetMonitoringSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getMonitoringSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitoringSettingResult.fromMap(result);
}

pulumi.Output<GetMonitoringSettingResult> getMonitoringSettingOutput(
  GetMonitoringSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getMonitoringSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMonitoringSettingResult.fromMap);
}

/// Get a Service and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// Get the Service Registry and its properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_service_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceRegistryResult> getServiceRegistry(
  GetServiceRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getServiceRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRegistryResult.fromMap(result);
}

pulumi.Output<GetServiceRegistryResult> getServiceRegistryOutput(
  GetServiceRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getServiceRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceRegistryResult.fromMap);
}

/// Get the storage resource.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_get_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageResult> getStorage(
  GetStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:getStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageResult.fromMap(result);
}

pulumi.Output<GetStorageResult> getStorageOutput(
  GetStorageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:getStorage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageResult.fromMap);
}

/// List keys of APM sensitive properties.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_apm_secret_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApmSecretKeysResult> listApmSecretKeys(
  ListApmSecretKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listApmSecretKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApmSecretKeysResult.fromMap(result);
}

pulumi.Output<ListApmSecretKeysResult> listApmSecretKeysOutput(
  ListApmSecretKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listApmSecretKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListApmSecretKeysResult.fromMap);
}

/// List deployments that are using the builder.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_build_service_builder_deployments_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBuildServiceBuilderDeploymentsResult> listBuildServiceBuilderDeployments(
  ListBuildServiceBuilderDeploymentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listBuildServiceBuilderDeployments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBuildServiceBuilderDeploymentsResult.fromMap(result);
}

pulumi.Output<ListBuildServiceBuilderDeploymentsResult> listBuildServiceBuilderDeploymentsOutput(
  ListBuildServiceBuilderDeploymentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listBuildServiceBuilderDeployments',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBuildServiceBuilderDeploymentsResult.fromMap);
}

/// List sensitive environment variables of the Job.
///
/// Uses Azure REST API version 2024-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_job_env_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListJobEnvSecretsResult> listJobEnvSecrets(
  ListJobEnvSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listJobEnvSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListJobEnvSecretsResult.fromMap(result);
}

pulumi.Output<ListJobEnvSecretsResult> listJobEnvSecretsOutput(
  ListJobEnvSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listJobEnvSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListJobEnvSecretsResult.fromMap);
}

/// List sensitive environment variables of Job execution.
///
/// Uses Azure REST API version 2024-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_job_execution_env_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListJobExecutionEnvSecretsResult> listJobExecutionEnvSecrets(
  ListJobExecutionEnvSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listJobExecutionEnvSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListJobExecutionEnvSecretsResult.fromMap(result);
}

pulumi.Output<ListJobExecutionEnvSecretsResult> listJobExecutionEnvSecretsOutput(
  ListJobExecutionEnvSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listJobExecutionEnvSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListJobExecutionEnvSecretsResult.fromMap);
}

/// List globally enabled APMs for a Service.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_service_globally_enabled_apms_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServiceGloballyEnabledApmsResult> listServiceGloballyEnabledApms(
  ListServiceGloballyEnabledApmsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listServiceGloballyEnabledApms',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServiceGloballyEnabledApmsResult.fromMap(result);
}

pulumi.Output<ListServiceGloballyEnabledApmsResult> listServiceGloballyEnabledApmsOutput(
  ListServiceGloballyEnabledApmsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listServiceGloballyEnabledApms',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServiceGloballyEnabledApmsResult.fromMap);
}

/// List test keys for a Service.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appplatform_list_service_test_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServiceTestKeysResult> listServiceTestKeys(
  ListServiceTestKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appplatform:listServiceTestKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServiceTestKeysResult.fromMap(result);
}

pulumi.Output<ListServiceTestKeysResult> listServiceTestKeysOutput(
  ListServiceTestKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:appplatform:listServiceTestKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServiceTestKeysResult.fromMap);
}
