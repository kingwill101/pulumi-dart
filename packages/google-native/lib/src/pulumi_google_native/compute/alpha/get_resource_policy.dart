import 'package:pulumi/pulumi.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';

/// Retrieves all information of the specified resource policy.
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getResourcePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}
