import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_compute_beta_args.dart';
import 'get_subnetwork_compute_beta_result.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkComputeBetaResult> getSubnetworkComputeBeta(
  GetSubnetworkComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkComputeBetaResult.fromMap(result);
}
