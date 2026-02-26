import 'package:pulumi/pulumi.dart';
import 'get_region_disk_args3.dart';
import 'get_region_disk_result3.dart';

/// Returns a specified regional persistent disk.
Future<GetRegionDiskResult3> getRegionDisk3(
  GetRegionDiskArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult3.fromMap(result);
}
