import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_grafana_args.dart';
import 'get_workspace_grafana_result.dart';

/// Provides an Amazon Managed Grafana workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
Future<GetWorkspaceGrafanaResult> getWorkspaceGrafana(
  GetWorkspaceGrafanaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:grafana/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceGrafanaResult.fromMap(result);
}
