import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_compute_v1_args.dart';
import 'get_instance_compute_v1_result.dart';

/// Returns the specified Instance resource.
Future<GetInstanceComputeV1Result> getInstanceComputeV1(
  GetInstanceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeV1Result.fromMap(result);
}
