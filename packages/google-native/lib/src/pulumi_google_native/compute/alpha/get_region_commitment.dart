import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_commitment_args.dart';
import 'get_region_commitment_result.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentResult> getRegionCommitment(
  GetRegionCommitmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentResult.fromMap(result);
}
