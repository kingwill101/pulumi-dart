import 'package:pulumi/pulumi.dart' hide Config;
import 'get_reservation_args6.dart';
import 'get_reservation_result6.dart';

/// Returns the reservation configuration.
Future<GetReservationResult6> getReservation6(
  GetReservationArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult6.fromMap(result);
}
