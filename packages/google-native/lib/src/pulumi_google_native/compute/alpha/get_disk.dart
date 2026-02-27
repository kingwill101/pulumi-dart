import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_args.dart';
import 'get_disk_result.dart';

/// Returns the specified persistent disk.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}
