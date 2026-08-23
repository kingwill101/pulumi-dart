import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adooauth_info_args.dart';
import 'get_adooauth_info_result.dart';
import 'get_git_hub_oauth_args.dart';
import 'get_git_hub_oauth_result.dart';
import 'get_iac_profile_args.dart';
import 'get_iac_profile_result.dart';
import 'get_workflow_args.dart';
import 'get_workflow_result.dart';

/// Gets ADOOAuth info used to authenticate users with ADO.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devhub_get_adooauth_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADOOAuthInfoResult> getADOOAuthInfo(
  GetADOOAuthInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devhub:getADOOAuthInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADOOAuthInfoResult.fromMap(result);
}

/// URL used to authorize the Developer Hub GitHub App
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-10-11-preview, 2024-05-01-preview, 2024-08-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devhub_get_git_hub_oauth_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGitHubOAuthResult> getGitHubOAuth(
  GetGitHubOAuthArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devhub:getGitHubOAuth',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGitHubOAuthResult.fromMap(result);
}

/// Resource representation of a IacProfile.
///
/// Uses Azure REST API version 2024-05-01-preview.
///
/// Other available API versions: 2024-08-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devhub_get_iac_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIacProfileResult> getIacProfile(
  GetIacProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devhub:getIacProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIacProfileResult.fromMap(result);
}

/// Resource representation of a workflow
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-10-11-preview, 2024-05-01-preview, 2024-08-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devhub_get_workflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowResult> getWorkflow(
  GetWorkflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devhub:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult.fromMap(result);
}
