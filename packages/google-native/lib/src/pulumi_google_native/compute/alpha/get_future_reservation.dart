import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_future_reservation_args.dart';
import 'get_future_reservation_result.dart';

/// Retrieves information about the specified future reservation.
Future<GetFutureReservationResult> getFutureReservation(
  GetFutureReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFutureReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFutureReservationResult.fromMap(result);
}
