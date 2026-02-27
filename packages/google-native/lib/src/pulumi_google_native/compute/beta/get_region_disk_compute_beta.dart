import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_compute_beta_args.dart';
import 'get_region_disk_compute_beta_result.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskComputeBetaResult> getRegionDiskComputeBeta(
  GetRegionDiskComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskComputeBetaResult.fromMap(result);
}
