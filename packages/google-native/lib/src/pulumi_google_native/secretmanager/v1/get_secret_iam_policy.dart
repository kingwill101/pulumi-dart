import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';

/// Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}
