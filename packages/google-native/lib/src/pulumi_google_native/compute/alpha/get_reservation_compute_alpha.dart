import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_compute_alpha_args.dart';
import 'get_reservation_compute_alpha_result.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationComputeAlphaResult> getReservationComputeAlpha(
  GetReservationComputeAlphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationComputeAlphaResult.fromMap(result);
}
