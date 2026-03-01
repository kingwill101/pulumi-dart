import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_business_process_development_artifact_args.dart';
import 'get_application_business_process_development_artifact_result.dart';
import 'get_application_resource_args.dart';
import 'get_application_resource_result.dart';
import 'get_application_result.dart';
import 'get_business_process_args.dart';
import 'get_business_process_result.dart';
import 'get_infrastructure_resource_args.dart';
import 'get_infrastructure_resource_result.dart';
import 'get_space_args.dart';
import 'get_space_result.dart';
import 'list_application_business_process_development_artifacts_args.dart';
import 'list_application_business_process_development_artifacts_result.dart';

/// Get a Application
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// The get business process development artifact action.
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_application_business_process_development_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationBusinessProcessDevelopmentArtifactResult> getApplicationBusinessProcessDevelopmentArtifact(
  GetApplicationBusinessProcessDevelopmentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getApplicationBusinessProcessDevelopmentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationBusinessProcessDevelopmentArtifactResult.fromMap(result);
}

/// Get a ApplicationResource
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_application_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResourceResult> getApplicationResource(
  GetApplicationResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getApplicationResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResourceResult.fromMap(result);
}

/// Get a BusinessProcess
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_business_process_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBusinessProcessResult> getBusinessProcess(
  GetBusinessProcessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getBusinessProcess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBusinessProcessResult.fromMap(result);
}

/// Get a InfrastructureResource
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_infrastructure_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInfrastructureResourceResult> getInfrastructureResource(
  GetInfrastructureResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getInfrastructureResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInfrastructureResourceResult.fromMap(result);
}

/// Get a Space
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_get_space_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpaceResult> getSpace(
  GetSpaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:getSpace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpaceResult.fromMap(result);
}

/// The list business process development artifacts action.
///
/// Uses Azure REST API version 2023-11-14-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_integrationspaces_list_application_business_process_development_artifacts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplicationBusinessProcessDevelopmentArtifactsResult> listApplicationBusinessProcessDevelopmentArtifacts(
  ListApplicationBusinessProcessDevelopmentArtifactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:integrationspaces:listApplicationBusinessProcessDevelopmentArtifacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplicationBusinessProcessDevelopmentArtifactsResult.fromMap(result);
}
