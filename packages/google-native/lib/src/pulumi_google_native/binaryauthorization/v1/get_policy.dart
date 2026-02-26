import 'package:pulumi/pulumi.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Gets a platform policy. Returns `NOT_FOUND` if the policy doesn't exist.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}
