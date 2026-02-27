import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_versions_args.dart';
import 'get_engine_versions_result.dart';

/// Provides access to available Google Kubernetes Engine versions in a zone or region for a given project.
///
/// To get more information about GKE versions, see:
/// * [The API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations/getServerConfig)
///
/// > If you are using the `gcp.container.getEngineVersions` datasource with a
/// regional cluster, ensure that you have provided a region as the `location` to
/// the datasource. A region can have a different set of supported versions than
/// its component zones, and not all zones in a region are guaranteed to
/// support the same version.
Future<GetEngineVersionsResult> getEngineVersions(
  GetEngineVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getEngineVersions:getEngineVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionsResult.fromMap(result);
}
