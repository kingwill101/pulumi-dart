import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_args.dart';
import 'get_disk_result.dart';

/// Get information about a Google Compute Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/latest/disks).
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDisk:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}
