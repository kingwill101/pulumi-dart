import 'package:pulumi/pulumi.dart';
import 'get_region_disk_args2.dart';
import 'get_region_disk_result2.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskResult2> getRegionDisk2(
  GetRegionDiskArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult2.fromMap(result);
}
