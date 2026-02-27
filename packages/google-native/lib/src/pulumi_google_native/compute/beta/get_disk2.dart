import 'package:pulumi/pulumi.dart' hide Config;
import 'get_disk_args2.dart';
import 'get_disk_result2.dart';

/// Returns the specified persistent disk.
Future<GetDiskResult2> getDisk2(
  GetDiskArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskResult2.fromMap(result);
}
