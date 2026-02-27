import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Provides an Amazon Managed Prometheus workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
