import 'package:pulumi/pulumi.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Decrypt multiple secrets from data encrypted with the AWS KMS service.
///
/// ## Example Usage
///
/// If you do not already have a `CiphertextBlob` from encrypting a KMS secret, you can use the below commands to obtain one using the [AWS CLI kms encrypt](https://docs.aws.amazon.com/cli/latest/reference/kms/encrypt.html) command. This requires you to have your AWS CLI setup correctly and replace the `--key-id` with your own. Alternatively you can use `--plaintext 'master-password'` (CLIv1) or `--plaintext fileb://<(echo -n 'master-password')` (CLIv2) instead of reading from a file.
///
/// > If you have a newline character at the end of your file, it will be decrypted with this newline character intact. For most use cases this is undesirable and leads to incorrect passwords or invalid values, as well as possible changes in the plan. Be sure to use `echo -n` if necessary.
/// > If you are using asymmetric keys ensure you are using the right encryption algorithm when you encrypt and decrypt else you will get IncorrectKeyException during the decrypt phase.
///
/// ```console
/// % echo -n 'master-password' > plaintext-password
/// % aws kms encrypt --key-id ab123456-c012-4567-890a-deadbeef123 --plaintext fileb://plaintext-password --encryption-context foo=bar --output text --query CiphertextBlob
/// AQECAHgaPa0J8WadplGCqqVAr4HNvDaFSQ+NaiwIBhmm6qDSFwAAAGIwYAYJKoZIhvcNAQcGoFMwUQIBADBMBgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDI+LoLdvYv8l41OhAAIBEIAfx49FFJCLeYrkfMfAw6XlnxP23MmDBdqP8dPp28OoAQ==
/// % aws kms encrypt --key-id ab123456-c012-4567-890a-deadbeef123 --plaintext fileb://plaintext-password --encryption-algorithm RSAES_OAEP_SHA_256 --output text --query CiphertextBlob
/// AQECAHgaPa0J8WadplGCqqVAr4HNvDaFSQ+NaiwIBhmm6qDSFwAAAGIwYAYJKoZIhvcNAQcGoFMwUQIBADBMBgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDI+LoLdvYv8l41OhAAIBEIAfx49FFJCLeYrkfMfAw6XlnxP23MmDBdqP8dPp28OoAQ==
/// ```
///
/// That encrypted output can now be inserted into provider configurations without exposing the plaintext secret directly.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getSecrets:getSecrets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
