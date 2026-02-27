import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_args.dart';
import 'get_region_disk_result.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}
