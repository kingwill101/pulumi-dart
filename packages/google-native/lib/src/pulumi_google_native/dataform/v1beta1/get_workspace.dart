import 'package:pulumi/pulumi.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Fetches a single Workspace.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
