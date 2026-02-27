import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_vmwareengine_args.dart';
import 'get_cluster_vmwareengine_result.dart';

/// Use this data source to get details about a cluster resource.
///
/// To get more information about private cloud cluster, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
Future<GetClusterVmwareengineResult> getClusterVmwareengine(
  GetClusterVmwareengineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterVmwareengineResult.fromMap(result);
}
