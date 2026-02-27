import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmscrypto_key_args.dart';
import 'get_kmscrypto_key_result.dart';

/// Provides access to a Google Cloud Platform KMS CryptoKey. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys).
///
/// A CryptoKey is an interface to key material which can be used to encrypt and decrypt data. A CryptoKey belongs to a
/// Google Cloud KMS KeyRing.
Future<GetKMSCryptoKeyResult> getKMSCryptoKey(
  GetKMSCryptoKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSCryptoKey:getKMSCryptoKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSCryptoKeyResult.fromMap(result);
}
