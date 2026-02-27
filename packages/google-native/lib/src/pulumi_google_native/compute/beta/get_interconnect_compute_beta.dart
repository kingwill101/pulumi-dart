import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_compute_beta_args.dart';
import 'get_interconnect_compute_beta_result.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectComputeBetaResult> getInterconnectComputeBeta(
  GetInterconnectComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectComputeBetaResult.fromMap(result);
}
