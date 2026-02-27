import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
