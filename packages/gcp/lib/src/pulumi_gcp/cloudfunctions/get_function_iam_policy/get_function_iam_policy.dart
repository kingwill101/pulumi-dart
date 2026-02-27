import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_result.dart';

/// Retrieves the current IAM policy data for cloudfunction
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}
