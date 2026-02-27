import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_commitment_compute_beta_args.dart';
import 'get_region_commitment_compute_beta_result.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentComputeBetaResult> getRegionCommitmentComputeBeta(
  GetRegionCommitmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentComputeBetaResult.fromMap(result);
}
