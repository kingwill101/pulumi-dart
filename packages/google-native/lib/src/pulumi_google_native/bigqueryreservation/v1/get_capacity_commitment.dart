import 'package:pulumi/pulumi.dart';
import 'get_capacity_commitment_args.dart';
import 'get_capacity_commitment_result.dart';

/// Returns information about the capacity commitment.
Future<GetCapacityCommitmentResult> getCapacityCommitment(
  GetCapacityCommitmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1:getCapacityCommitment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCapacityCommitmentResult.fromMap(result);
}
