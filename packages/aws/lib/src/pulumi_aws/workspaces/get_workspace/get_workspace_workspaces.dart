import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_workspaces_args.dart';
import 'get_workspace_workspaces_result.dart';

/// Use this data source to get information about a workspace in [AWS Workspaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html) Service.
///
/// ## Example Usage
///
/// ### Filter By Workspace ID
///
///
///
/// ### Filter By Directory ID & User Name
Future<GetWorkspaceWorkspacesResult> getWorkspaceWorkspaces(
  GetWorkspaceWorkspacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceWorkspacesResult.fromMap(result);
}
