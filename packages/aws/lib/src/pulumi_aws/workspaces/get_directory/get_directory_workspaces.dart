import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_workspaces_args.dart';
import 'get_directory_workspaces_result.dart';

/// Retrieve information about an AWS WorkSpaces directory.
Future<GetDirectoryWorkspacesResult> getDirectoryWorkspaces(
  GetDirectoryWorkspacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getDirectory:getDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryWorkspacesResult.fromMap(result);
}
