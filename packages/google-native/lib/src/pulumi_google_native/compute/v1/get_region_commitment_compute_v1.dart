import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_commitment_compute_v1_args.dart';
import 'get_region_commitment_compute_v1_result.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentComputeV1Result> getRegionCommitmentComputeV1(
  GetRegionCommitmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentComputeV1Result.fromMap(result);
}
