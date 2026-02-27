import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_compute_v1_args.dart';
import 'get_subnetwork_compute_v1_result.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkComputeV1Result> getSubnetworkComputeV1(
  GetSubnetworkComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkComputeV1Result.fromMap(result);
}
