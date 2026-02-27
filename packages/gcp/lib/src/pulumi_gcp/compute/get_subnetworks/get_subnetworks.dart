import 'package:pulumi/pulumi.dart';
import 'get_subnetworks_args.dart';
import 'get_subnetworks_result.dart';

/// Get subnetworks within GCE.
/// See [the official documentation](https://cloud.google.com/vpc/docs/subnets)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list).
Future<GetSubnetworksResult> getSubnetworks(
  GetSubnetworksArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworks:getSubnetworks',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworksResult.fromMap(result);
}
