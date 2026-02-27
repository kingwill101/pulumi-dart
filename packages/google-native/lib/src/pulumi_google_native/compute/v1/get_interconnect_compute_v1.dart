import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_compute_v1_args.dart';
import 'get_interconnect_compute_v1_result.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectComputeV1Result> getInterconnectComputeV1(
  GetInterconnectComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectComputeV1Result.fromMap(result);
}
