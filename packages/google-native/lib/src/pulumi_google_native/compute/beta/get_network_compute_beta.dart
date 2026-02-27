import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_compute_beta_args.dart';
import 'get_network_compute_beta_result.dart';

/// Returns the specified network.
Future<GetNetworkComputeBetaResult> getNetworkComputeBeta(
  GetNetworkComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkComputeBetaResult.fromMap(result);
}
