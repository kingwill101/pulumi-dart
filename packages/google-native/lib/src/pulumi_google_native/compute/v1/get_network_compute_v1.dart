import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_compute_v1_args.dart';
import 'get_network_compute_v1_result.dart';

/// Returns the specified network.
Future<GetNetworkComputeV1Result> getNetworkComputeV1(
  GetNetworkComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkComputeV1Result.fromMap(result);
}
