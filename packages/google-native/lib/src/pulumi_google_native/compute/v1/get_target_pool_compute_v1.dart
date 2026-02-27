import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_pool_compute_v1_args.dart';
import 'get_target_pool_compute_v1_result.dart';

/// Returns the specified target pool.
Future<GetTargetPoolComputeV1Result> getTargetPoolComputeV1(
  GetTargetPoolComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolComputeV1Result.fromMap(result);
}
