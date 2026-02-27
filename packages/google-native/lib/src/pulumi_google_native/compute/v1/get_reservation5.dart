import 'package:pulumi/pulumi.dart' hide Config;
import 'get_reservation_args5.dart';
import 'get_reservation_result5.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationResult5> getReservation5(
  GetReservationArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult5.fromMap(result);
}
