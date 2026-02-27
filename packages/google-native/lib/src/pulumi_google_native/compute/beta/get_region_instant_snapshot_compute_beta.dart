import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instant_snapshot_compute_beta_args.dart';
import 'get_region_instant_snapshot_compute_beta_result.dart';

/// Returns the specified InstantSnapshot resource in the specified region.
Future<GetRegionInstantSnapshotComputeBetaResult>
    getRegionInstantSnapshotComputeBeta(
  GetRegionInstantSnapshotComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotComputeBetaResult.fromMap(result);
}
