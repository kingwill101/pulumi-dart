import 'package:pulumi/pulumi.dart';
import 'get_reservation_args2.dart';
import 'get_reservation_result2.dart';

/// Returns information about the reservation.
Future<GetReservationResult2> getReservation2(
  GetReservationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult2.fromMap(result);
}
