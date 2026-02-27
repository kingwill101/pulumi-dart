import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmskey_ring_args.dart';
import 'get_kmskey_ring_result.dart';

/// Provides access to Google Cloud Platform KMS KeyRing. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_ring)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings).
///
/// A KeyRing is a grouping of CryptoKeys for organizational purposes. A KeyRing belongs to a Google Cloud Platform Project
/// and resides in a specific location.
Future<GetKMSKeyRingResult> getKMSKeyRing(
  GetKMSKeyRingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSKeyRing:getKMSKeyRing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSKeyRingResult.fromMap(result);
}
