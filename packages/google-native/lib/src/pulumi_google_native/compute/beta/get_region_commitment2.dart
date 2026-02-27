import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_commitment_args2.dart';
import 'get_region_commitment_result2.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentResult2> getRegionCommitment2(
  GetRegionCommitmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionCommitment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentResult2.fromMap(result);
}
