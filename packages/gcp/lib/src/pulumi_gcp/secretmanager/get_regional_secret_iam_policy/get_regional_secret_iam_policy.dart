import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_iam_policy_args.dart';
import 'get_regional_secret_iam_policy_result.dart';

/// Retrieves the current IAM policy data for regionalsecret
Future<GetRegionalSecretIamPolicyResult> getRegionalSecretIamPolicy(
  GetRegionalSecretIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretIamPolicy:getRegionalSecretIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretIamPolicyResult.fromMap(result);
}
