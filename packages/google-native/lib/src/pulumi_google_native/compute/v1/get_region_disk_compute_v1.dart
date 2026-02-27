import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_compute_v1_args.dart';
import 'get_region_disk_compute_v1_result.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskComputeV1Result> getRegionDiskComputeV1(
  GetRegionDiskComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskComputeV1Result.fromMap(result);
}
