import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_commitment_args.dart';
import 'get_region_commitment_result.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentResult> getRegionCommitment(
  GetRegionCommitmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionCommitment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentResult.fromMap(result);
}
