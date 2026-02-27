import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';

/// Retrieves the current IAM policy data for secret
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretIamPolicy:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}
