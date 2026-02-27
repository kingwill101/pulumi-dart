import 'package:pulumi/pulumi.dart';
import 'get_workspace_args3.dart';
import 'get_workspace_result3.dart';

/// Use this data source to get information about a workspace in [AWS Workspaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html) Service.
///
/// ## Example Usage
///
/// ### Filter By Workspace ID
///
///
///
/// ### Filter By Directory ID & User Name
Future<GetWorkspaceResult3> getWorkspace3(
  GetWorkspaceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getWorkspace:getWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult3.fromMap(result);
}
