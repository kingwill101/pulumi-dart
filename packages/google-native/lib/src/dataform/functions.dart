import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_collection_iam_policy_args.dart';
import 'get_collection_iam_policy_result.dart';
import 'get_compilation_result_args.dart';
import 'get_compilation_result_result.dart';
import 'get_release_config_args.dart';
import 'get_release_config_result.dart';
import 'get_repository_args.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';
import 'get_repository_result.dart';
import 'get_repository_workspace_iam_policy_args.dart';
import 'get_repository_workspace_iam_policy_result.dart';
import 'get_workflow_config_args.dart';
import 'get_workflow_config_result.dart';
import 'get_workflow_invocation_args.dart';
import 'get_workflow_invocation_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_collection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCollectionIamPolicyResult> getCollectionIamPolicy(
  GetCollectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getCollectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCollectionIamPolicyResult.fromMap(result);
}

/// Fetches a single CompilationResult.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_compilation_result_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompilationResultResult> getCompilationResult(
  GetCompilationResultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getCompilationResult',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompilationResultResult.fromMap(result);
}

/// Fetches a single ReleaseConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_release_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReleaseConfigResult> getReleaseConfig(
  GetReleaseConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getReleaseConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseConfigResult.fromMap(result);
}

/// Fetches a single Repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_repository_workspace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryWorkspaceIamPolicyResult> getRepositoryWorkspaceIamPolicy(
  GetRepositoryWorkspaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepositoryWorkspaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryWorkspaceIamPolicyResult.fromMap(result);
}

/// Fetches a single WorkflowConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_workflow_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowConfigResult> getWorkflowConfig(
  GetWorkflowConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkflowConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowConfigResult.fromMap(result);
}

/// Fetches a single WorkflowInvocation.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_workflow_invocation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowInvocationResult> getWorkflowInvocation(
  GetWorkflowInvocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkflowInvocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowInvocationResult.fromMap(result);
}

/// Fetches a single Workspace.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_v1beta1_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
