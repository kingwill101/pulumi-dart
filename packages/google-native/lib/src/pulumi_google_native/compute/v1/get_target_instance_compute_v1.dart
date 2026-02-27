import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_instance_compute_v1_args.dart';
import 'get_target_instance_compute_v1_result.dart';

/// Returns the specified TargetInstance resource.
Future<GetTargetInstanceComputeV1Result> getTargetInstanceComputeV1(
  GetTargetInstanceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceComputeV1Result.fromMap(result);
}
