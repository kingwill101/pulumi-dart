import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_compute_v1_args.dart';
import 'get_snapshot_compute_v1_result.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotComputeV1Result> getSnapshotComputeV1(
  GetSnapshotComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotComputeV1Result.fromMap(result);
}
