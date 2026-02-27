import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_compute_beta_args.dart';
import 'get_resource_policy_compute_beta_result.dart';

/// Retrieves all information of the specified resource policy.
Future<GetResourcePolicyComputeBetaResult> getResourcePolicyComputeBeta(
  GetResourcePolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyComputeBetaResult.fromMap(result);
}
