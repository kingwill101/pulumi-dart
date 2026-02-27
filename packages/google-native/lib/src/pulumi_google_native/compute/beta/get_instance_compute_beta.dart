import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_compute_beta_args.dart';
import 'get_instance_compute_beta_result.dart';

/// Returns the specified Instance resource.
Future<GetInstanceComputeBetaResult> getInstanceComputeBeta(
  GetInstanceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeBetaResult.fromMap(result);
}
