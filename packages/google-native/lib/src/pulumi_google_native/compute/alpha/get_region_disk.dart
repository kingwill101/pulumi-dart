import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_disk_args.dart';
import 'get_region_disk_result.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}
