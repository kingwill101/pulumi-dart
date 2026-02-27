import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_compute_alpha_args.dart';
import 'get_snapshot_compute_alpha_result.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotComputeAlphaResult> getSnapshotComputeAlpha(
  GetSnapshotComputeAlphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotComputeAlphaResult.fromMap(result);
}
