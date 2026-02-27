import 'package:pulumi/pulumi.dart';
import 'get_cluster_versions_args.dart';
import 'get_cluster_versions_result.dart';

/// Data source for managing AWS EKS (Elastic Kubernetes) Cluster Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by Cluster Type
///
///
///
/// ### Filter by Version Status
Future<GetClusterVersionsResult> getClusterVersions(
  GetClusterVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterVersions:getClusterVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterVersionsResult.fromMap(result);
}
