import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_iam_policy_secretmanager_v1beta1_args.dart';
import 'get_secret_iam_policy_secretmanager_v1beta1_result.dart';

/// Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
Future<GetSecretIamPolicySecretmanagerV1beta1Result>
    getSecretIamPolicySecretmanagerV1beta1(
  GetSecretIamPolicySecretmanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1beta1:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicySecretmanagerV1beta1Result.fromMap(result);
}
