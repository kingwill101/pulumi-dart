import 'package:pulumi/pulumi.dart';
import 'get_crypto_key_latest_version_args.dart';
import 'get_crypto_key_latest_version_result.dart';

/// Provides access to the latest Google Cloud Platform KMS CryptoKeyVersion in a CryptoKey. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
Future<GetCryptoKeyLatestVersionResult> getCryptoKeyLatestVersion(
  GetCryptoKeyLatestVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyLatestVersion:getCryptoKeyLatestVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyLatestVersionResult.fromMap(result);
}
