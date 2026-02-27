import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_ring_crypto_key_iam_policy_args.dart';
import 'get_key_ring_crypto_key_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetKeyRingCryptoKeyIamPolicyResult> getKeyRingCryptoKeyIamPolicy(
  GetKeyRingCryptoKeyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingCryptoKeyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingCryptoKeyIamPolicyResult.fromMap(result);
}
