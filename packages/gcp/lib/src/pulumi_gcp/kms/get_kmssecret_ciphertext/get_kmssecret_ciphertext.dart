import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmssecret_ciphertext_args.dart';
import 'get_kmssecret_ciphertext_result.dart';

/// !> **Warning:** This data source is deprecated. Use the `gcp.kms.SecretCiphertext` **resource** instead.
///
/// This data source allows you to encrypt data with Google Cloud KMS and use the
/// ciphertext within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt).
///
/// > **NOTE:** Using this data source will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
///
///
/// Next, encrypt some sensitive information and use the encrypted data in your resource definitions:
///
///
///
/// The resulting instance can then access the encrypted password from its metadata
/// and decrypt it, e.g. using the [Cloud SDK](https://cloud.google.com/sdk/gcloud/reference/kms/decrypt)):
///
/// ```bash
/// $ curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/attributes/password \
/// > | base64 -d | gcloud kms decrypt \
/// > --project my-project \
/// > --location us-central1 \
/// > --keyring my-key-ring \
/// > --key my-crypto-key \
/// > --plaintext-file - \
/// > --ciphertext-file - \
/// my-secret-password
/// ```
Future<GetKMSSecretCiphertextResult> getKMSSecretCiphertext(
  GetKMSSecretCiphertextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecretCiphertext:getKMSSecretCiphertext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretCiphertextResult.fromMap(result);
}
