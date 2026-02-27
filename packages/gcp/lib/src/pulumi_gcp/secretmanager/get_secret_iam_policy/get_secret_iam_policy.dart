import 'package:pulumi/pulumi.dart';
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';

/// Retrieves the current IAM policy data for secret
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretIamPolicy:getSecretIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}
