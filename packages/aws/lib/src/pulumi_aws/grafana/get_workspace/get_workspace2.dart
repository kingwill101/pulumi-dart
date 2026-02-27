import 'package:pulumi/pulumi.dart';
import 'get_workspace_args2.dart';
import 'get_workspace_result2.dart';

/// Provides an Amazon Managed Grafana workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
Future<GetWorkspaceResult2> getWorkspace2(
  GetWorkspaceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:grafana/getWorkspace:getWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult2.fromMap(result);
}
