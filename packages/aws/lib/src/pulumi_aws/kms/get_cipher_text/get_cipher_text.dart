import 'package:pulumi/pulumi.dart';
import 'get_cipher_text_args.dart';
import 'get_cipher_text_result.dart';

/// The KMS ciphertext data source allows you to encrypt plaintext into ciphertext
/// by using an AWS KMS customer master key. The value returned by this data source
/// changes every apply. For a stable ciphertext value, see the `aws.kms.Ciphertext`
/// resource.
Future<GetCipherTextResult> getCipherText(
  GetCipherTextArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getCipherText:getCipherText',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCipherTextResult.fromMap(result);
}
