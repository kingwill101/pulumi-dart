import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_disk_args.dart';
import 'get_local_disk_result.dart';

/// Retrieve information about a Storage Gateway local disk. The disk identifier is useful for adding the disk as a cache or upload buffer to a gateway.
Future<GetLocalDiskResult> getLocalDisk(
  GetLocalDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:storagegateway/getLocalDisk:getLocalDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalDiskResult.fromMap(result);
}
