import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ekm_connection_iam_policy_args.dart';
import 'get_ekm_connection_iam_policy_result.dart';

/// Retrieves the current IAM policy data for ekmconnection
Future<GetEkmConnectionIamPolicyResult> getEkmConnectionIamPolicy(
  GetEkmConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getEkmConnectionIamPolicy:getEkmConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionIamPolicyResult.fromMap(result);
}
