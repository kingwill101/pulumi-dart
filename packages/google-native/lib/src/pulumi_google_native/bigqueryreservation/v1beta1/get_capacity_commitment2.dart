import 'package:pulumi/pulumi.dart' hide Config;
import 'get_capacity_commitment_args2.dart';
import 'get_capacity_commitment_result2.dart';

/// Returns information about the capacity commitment.
Future<GetCapacityCommitmentResult2> getCapacityCommitment2(
  GetCapacityCommitmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getCapacityCommitment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCapacityCommitmentResult2.fromMap(result);
}
