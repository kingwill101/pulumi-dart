import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_args.dart';
import 'get_crypto_key_result.dart';

/// Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion.
Future<GetCryptoKeyResult> getCryptoKey(
  GetCryptoKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getCryptoKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyResult.fromMap(result);
}
