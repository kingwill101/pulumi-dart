import 'package:pulumi/pulumi.dart';
import 'get_runtime_iam_policy_args2.dart';
import 'get_runtime_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRuntimeIamPolicyResult2> getRuntimeIamPolicy2(
  GetRuntimeIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getRuntimeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult2.fromMap(result);
}
