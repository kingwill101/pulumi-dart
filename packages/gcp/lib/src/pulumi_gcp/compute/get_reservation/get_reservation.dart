import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_args.dart';
import 'get_reservation_result.dart';

/// Provides access to available Google Compute Reservation Resources for a given project.
/// See more about [Reservations of Compute Engine resources](https://cloud.google.com/compute/docs/instances/reservations-overview) in the upstream docs.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservation:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}
