import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instant_snapshot_args2.dart';
import 'get_instant_snapshot_result2.dart';

/// Returns the specified InstantSnapshot resource in the specified zone.
Future<GetInstantSnapshotResult2> getInstantSnapshot2(
  GetInstantSnapshotArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstantSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotResult2.fromMap(result);
}
