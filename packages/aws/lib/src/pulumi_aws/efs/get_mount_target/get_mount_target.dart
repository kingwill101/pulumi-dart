import 'package:pulumi/pulumi.dart';
import 'get_mount_target_args.dart';
import 'get_mount_target_result.dart';

/// Provides information about an Elastic File System Mount Target (EFS).
Future<GetMountTargetResult> getMountTarget(
  GetMountTargetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getMountTarget:getMountTarget',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMountTargetResult.fromMap(result);
}
