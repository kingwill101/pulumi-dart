import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_iam_policy_cloudfunctions_v2beta_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFunctionIamPolicyCloudfunctionsV2betaResult>
    getFunctionIamPolicyCloudfunctionsV2beta(
  GetFunctionIamPolicyCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2betaResult.fromMap(result);
}
