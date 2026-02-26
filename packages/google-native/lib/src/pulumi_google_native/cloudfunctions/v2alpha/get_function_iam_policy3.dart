import 'package:pulumi/pulumi.dart';
import 'get_function_iam_policy_args3.dart';
import 'get_function_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFunctionIamPolicyResult3> getFunctionIamPolicy3(
  GetFunctionIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult3.fromMap(result);
}
