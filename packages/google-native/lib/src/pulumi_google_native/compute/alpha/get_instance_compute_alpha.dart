import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_compute_alpha_args.dart';
import 'get_instance_compute_alpha_result.dart';

/// Returns the specified Instance resource.
Future<GetInstanceComputeAlphaResult> getInstanceComputeAlpha(
  GetInstanceComputeAlphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeAlphaResult.fromMap(result);
}
