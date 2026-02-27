import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestor_iam_policy_args.dart';
import 'get_attestor_iam_policy_result.dart';

/// Retrieves the current IAM policy data for attestor
Future<GetAttestorIamPolicyResult> getAttestorIamPolicy(
  GetAttestorIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:binaryauthorization/getAttestorIamPolicy:getAttestorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyResult.fromMap(result);
}
