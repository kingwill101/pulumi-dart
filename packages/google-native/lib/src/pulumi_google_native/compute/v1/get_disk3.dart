import 'package:pulumi/pulumi.dart' hide Config;
import 'get_disk_args3.dart';
import 'get_disk_result3.dart';

/// Returns the specified persistent disk.
Future<GetDiskResult3> getDisk3(
  GetDiskArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskResult3.fromMap(result);
}
