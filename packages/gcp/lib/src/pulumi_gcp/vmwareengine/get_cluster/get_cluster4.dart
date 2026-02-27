import 'package:pulumi/pulumi.dart';
import 'get_cluster_args4.dart';
import 'get_cluster_result4.dart';

/// Use this data source to get details about a cluster resource.
///
/// To get more information about private cloud cluster, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
Future<GetClusterResult4> getCluster4(
  GetClusterArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult4.fromMap(result);
}
