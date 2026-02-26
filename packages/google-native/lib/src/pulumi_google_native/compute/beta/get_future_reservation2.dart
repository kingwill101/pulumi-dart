import 'package:pulumi/pulumi.dart';
import 'get_future_reservation_args2.dart';
import 'get_future_reservation_result2.dart';

/// Retrieves information about the specified future reservation.
Future<GetFutureReservationResult2> getFutureReservation2(
  GetFutureReservationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFutureReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFutureReservationResult2.fromMap(result);
}
