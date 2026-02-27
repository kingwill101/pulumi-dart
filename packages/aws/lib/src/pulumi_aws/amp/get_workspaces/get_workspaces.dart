import 'package:pulumi/pulumi.dart';
import 'get_workspaces_args.dart';
import 'get_workspaces_result.dart';

/// Provides the aliases, ARNs, and workspace IDs of Amazon Prometheus workspaces.
///
/// ## Example Usage
///
/// The following example returns all of the workspaces in a region:
///
///
///
/// The following example filters the workspaces by alias. Only the workspaces with
/// aliases that begin with the value of `alias_prefix` will be returned:
Future<GetWorkspacesResult> getWorkspaces(
  GetWorkspacesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspaces:getWorkspaces',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspacesResult.fromMap(result);
}
