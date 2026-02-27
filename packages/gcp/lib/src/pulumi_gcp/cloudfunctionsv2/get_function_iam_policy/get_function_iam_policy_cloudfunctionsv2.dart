import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_iam_policy_cloudfunctionsv2_args.dart';
import 'get_function_iam_policy_cloudfunctionsv2_result.dart';

/// Retrieves the current IAM policy data for function
Future<GetFunctionIamPolicyCloudfunctionsv2Result>
    getFunctionIamPolicyCloudfunctionsv2(
  GetFunctionIamPolicyCloudfunctionsv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsv2Result.fromMap(result);
}
