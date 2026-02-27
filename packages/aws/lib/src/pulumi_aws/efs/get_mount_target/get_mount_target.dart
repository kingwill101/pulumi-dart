import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mount_target_args.dart';
import 'get_mount_target_result.dart';

/// Provides information about an Elastic File System Mount Target (EFS).
Future<GetMountTargetResult> getMountTarget(
  GetMountTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getMountTarget:getMountTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMountTargetResult.fromMap(result);
}
