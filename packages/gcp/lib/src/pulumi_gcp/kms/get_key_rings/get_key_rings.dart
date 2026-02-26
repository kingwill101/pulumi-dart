import 'package:pulumi/pulumi.dart';
import 'get_key_rings_args.dart';
import 'get_key_rings_result.dart';

/// Provides access to all Google Cloud Platform KMS CryptoKeyRings in a set location. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_rings)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings).
///
/// A key ring organizes keys in a specific Google Cloud location and lets you manage access control on groups of keys. A key ring's name does not need to be unique across a Google Cloud project, but must be unique within a given location. After creation, a key ring cannot be deleted. Key rings don't incur any costs.
Future<GetKeyRingsResult> getKeyRings(
  GetKeyRingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyRings:getKeyRings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyRingsResult.fromMap(result);
}
