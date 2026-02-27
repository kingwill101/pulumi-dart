import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_ring_iam_policy_args.dart';
import 'get_key_ring_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud KMS key ring.
///
/// ## example
Future<GetKeyRingIamPolicyResult> getKeyRingIamPolicy(
  GetKeyRingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyRingIamPolicy:getKeyRingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingIamPolicyResult.fromMap(result);
}
