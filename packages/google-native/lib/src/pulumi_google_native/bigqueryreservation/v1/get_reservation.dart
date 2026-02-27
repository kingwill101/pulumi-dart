import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_args.dart';
import 'get_reservation_result.dart';

/// Returns information about the reservation.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}
