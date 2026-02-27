import 'package:pulumi/pulumi.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Provides an Amazon Managed Prometheus workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspace:getWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
