import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_compute_v1_args.dart';
import 'get_resource_policy_compute_v1_result.dart';

/// Retrieves all information of the specified resource policy.
Future<GetResourcePolicyComputeV1Result> getResourcePolicyComputeV1(
  GetResourcePolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyComputeV1Result.fromMap(result);
}
