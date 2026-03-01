import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'list_workspace_keys_args.dart';
import 'list_workspace_keys_result.dart';

/// Gets the properties of the specified machine learning workspace.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearning_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearning:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

/// List the authorization keys associated with this workspace.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearning_list_workspace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceKeysResult> listWorkspaceKeys(
  ListWorkspaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearning:listWorkspaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceKeysResult.fromMap(result);
}
