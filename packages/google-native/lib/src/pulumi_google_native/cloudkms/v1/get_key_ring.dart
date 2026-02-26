import 'package:pulumi/pulumi.dart';
import 'get_key_ring_args.dart';
import 'get_key_ring_result.dart';

/// Returns metadata for a given KeyRing.
Future<GetKeyRingResult> getKeyRing(
  GetKeyRingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRing',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyRingResult.fromMap(result);
}
