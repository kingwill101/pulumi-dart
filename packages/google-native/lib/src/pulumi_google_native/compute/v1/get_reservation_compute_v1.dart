import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_compute_v1_args.dart';
import 'get_reservation_compute_v1_result.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationComputeV1Result> getReservationComputeV1(
  GetReservationComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationComputeV1Result.fromMap(result);
}
