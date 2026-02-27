import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_compute_beta_args.dart';
import 'get_reservation_compute_beta_result.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationComputeBetaResult> getReservationComputeBeta(
  GetReservationComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationComputeBetaResult.fromMap(result);
}
