import 'package:pulumi/pulumi.dart' hide Config;
import 'get_function_iam_policy_args2.dart';
import 'get_function_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFunctionIamPolicyResult2> getFunctionIamPolicy2(
  GetFunctionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult2.fromMap(result);
}
