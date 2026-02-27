import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_compute_beta_args.dart';
import 'get_disk_compute_beta_result.dart';

/// Returns the specified persistent disk.
Future<GetDiskComputeBetaResult> getDiskComputeBeta(
  GetDiskComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskComputeBetaResult.fromMap(result);
}
