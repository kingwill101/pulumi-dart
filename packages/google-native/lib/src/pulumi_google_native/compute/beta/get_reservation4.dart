import 'package:pulumi/pulumi.dart' hide Config;
import 'get_reservation_args4.dart';
import 'get_reservation_result4.dart';

/// Retrieves information about the specified reservation.
Future<GetReservationResult4> getReservation4(
  GetReservationArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult4.fromMap(result);
}
