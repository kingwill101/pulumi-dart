import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmscrypto_key_version_args.dart';
import 'get_kmscrypto_key_version_result.dart';

/// Provides access to a Google Cloud Platform KMS CryptoKeyVersion. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
///
/// A CryptoKeyVersion represents an individual cryptographic key, and the associated key material.
Future<GetKMSCryptoKeyVersionResult> getKMSCryptoKeyVersion(
  GetKMSCryptoKeyVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSCryptoKeyVersion:getKMSCryptoKeyVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSCryptoKeyVersionResult.fromMap(result);
}
