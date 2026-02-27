import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_ring_iam_policy_args.dart';
import 'get_key_ring_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetKeyRingIamPolicyResult> getKeyRingIamPolicy(
  GetKeyRingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingIamPolicyResult.fromMap(result);
}
