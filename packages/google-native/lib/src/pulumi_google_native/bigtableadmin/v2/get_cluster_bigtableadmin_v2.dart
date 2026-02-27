import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_bigtableadmin_v2_args.dart';
import 'get_cluster_bigtableadmin_v2_result.dart';

/// Gets information about a cluster.
Future<GetClusterBigtableadminV2Result> getClusterBigtableadminV2(
  GetClusterBigtableadminV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterBigtableadminV2Result.fromMap(result);
}
