import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_commitment_bigqueryreservation_v1beta1_args.dart';
import 'get_capacity_commitment_bigqueryreservation_v1beta1_result.dart';

/// Returns information about the capacity commitment.
Future<GetCapacityCommitmentBigqueryreservationV1beta1Result>
    getCapacityCommitmentBigqueryreservationV1beta1(
  GetCapacityCommitmentBigqueryreservationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getCapacityCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityCommitmentBigqueryreservationV1beta1Result.fromMap(result);
}
