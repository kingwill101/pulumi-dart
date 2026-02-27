import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_pool_compute_beta_args.dart';
import 'get_target_pool_compute_beta_result.dart';

/// Returns the specified target pool.
Future<GetTargetPoolComputeBetaResult> getTargetPoolComputeBeta(
  GetTargetPoolComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolComputeBetaResult.fromMap(result);
}
