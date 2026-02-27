import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_args.dart';
import 'get_subnetwork_result.dart';

/// Get a subnetwork within GCE from its name and region.
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetwork:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}
