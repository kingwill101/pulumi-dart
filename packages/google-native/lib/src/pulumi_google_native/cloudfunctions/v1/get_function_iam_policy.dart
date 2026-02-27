import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_result.dart';

/// Gets the IAM access control policy for a function. Returns an empty policy if the function exists and does not have a policy set.
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}
