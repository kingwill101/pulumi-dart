import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_versions_args.dart';
import 'get_crypto_key_versions_result.dart';

/// Provides access to Google Cloud Platform KMS CryptoKeyVersions. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
Future<GetCryptoKeyVersionsResult> getCryptoKeyVersions(
  GetCryptoKeyVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyVersions:getCryptoKeyVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyVersionsResult.fromMap(result);
}
