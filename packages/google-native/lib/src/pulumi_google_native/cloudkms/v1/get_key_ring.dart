import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_ring_args.dart';
import 'get_key_ring_result.dart';

/// Returns metadata for a given KeyRing.
Future<GetKeyRingResult> getKeyRing(
  GetKeyRingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingResult.fromMap(result);
}
