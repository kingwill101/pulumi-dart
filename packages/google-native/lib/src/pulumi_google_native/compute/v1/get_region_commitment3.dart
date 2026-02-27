import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_commitment_args3.dart';
import 'get_region_commitment_result3.dart';

/// Returns the specified commitment resource.
Future<GetRegionCommitmentResult3> getRegionCommitment3(
  GetRegionCommitmentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionCommitment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentResult3.fromMap(result);
}
