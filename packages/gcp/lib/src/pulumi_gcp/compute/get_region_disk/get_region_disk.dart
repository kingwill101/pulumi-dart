import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_args.dart';
import 'get_region_disk_result.dart';

/// Get information about a Google Compute Regional Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks).
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDisk:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}
