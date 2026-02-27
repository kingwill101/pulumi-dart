import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_compute_beta_args.dart';
import 'get_snapshot_compute_beta_result.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotComputeBetaResult> getSnapshotComputeBeta(
  GetSnapshotComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotComputeBetaResult.fromMap(result);
}
