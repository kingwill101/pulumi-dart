import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
