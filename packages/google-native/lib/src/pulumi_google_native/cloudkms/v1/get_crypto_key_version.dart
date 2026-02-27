import 'package:pulumi/pulumi.dart' hide Config;
import 'get_crypto_key_version_args.dart';
import 'get_crypto_key_version_result.dart';

/// Returns metadata for a given CryptoKeyVersion.
Future<GetCryptoKeyVersionResult> getCryptoKeyVersion(
  GetCryptoKeyVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getCryptoKeyVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyVersionResult.fromMap(result);
}
