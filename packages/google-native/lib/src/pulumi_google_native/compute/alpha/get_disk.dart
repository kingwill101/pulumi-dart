import 'package:pulumi/pulumi.dart';
import 'get_disk_args.dart';
import 'get_disk_result.dart';

/// Returns the specified persistent disk.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}
