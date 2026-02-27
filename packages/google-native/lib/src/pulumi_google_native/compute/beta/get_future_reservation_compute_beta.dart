import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_future_reservation_compute_beta_args.dart';
import 'get_future_reservation_compute_beta_result.dart';

/// Retrieves information about the specified future reservation.
Future<GetFutureReservationComputeBetaResult> getFutureReservationComputeBeta(
  GetFutureReservationComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFutureReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFutureReservationComputeBetaResult.fromMap(result);
}
