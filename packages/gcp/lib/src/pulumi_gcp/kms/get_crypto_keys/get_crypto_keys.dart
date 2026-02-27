import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_keys_args.dart';
import 'get_crypto_keys_result.dart';

/// Provides access to all Google Cloud Platform KMS CryptoKeys in a given KeyRing. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys).
///
/// A CryptoKey is an interface to key material which can be used to encrypt and decrypt data. A CryptoKey belongs to a
/// Google Cloud KMS KeyRing.
Future<GetCryptoKeysResult> getCryptoKeys(
  GetCryptoKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeys:getCryptoKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeysResult.fromMap(result);
}
