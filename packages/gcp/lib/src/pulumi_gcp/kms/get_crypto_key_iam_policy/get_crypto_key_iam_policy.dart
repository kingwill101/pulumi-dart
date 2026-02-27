import 'package:pulumi/pulumi.dart';
import 'get_crypto_key_iam_policy_args.dart';
import 'get_crypto_key_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud KMS crypto key.
///
/// ## example
Future<GetCryptoKeyIamPolicyResult> getCryptoKeyIamPolicy(
  GetCryptoKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyIamPolicy:getCryptoKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyIamPolicyResult.fromMap(result);
}
