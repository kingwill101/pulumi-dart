import 'package:pulumi/pulumi.dart' hide Config;
import 'get_reservation_args3.dart';
import 'get_reservation_result3.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationResult3> getReservation3(
  GetReservationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult3.fromMap(result);
}
