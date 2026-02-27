import 'package:pulumi/pulumi.dart';
import 'get_function_iam_policy_args2.dart';
import 'get_function_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for function
Future<GetFunctionIamPolicyResult2> getFunctionIamPolicy2(
  GetFunctionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult2.fromMap(result);
}
