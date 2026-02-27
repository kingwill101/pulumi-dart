import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_pubsublite_v1_args.dart';
import 'get_reservation_pubsublite_v1_result.dart';

/// Returns the reservation configuration.
Future<GetReservationPubsubliteV1Result> getReservationPubsubliteV1(
  GetReservationPubsubliteV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationPubsubliteV1Result.fromMap(result);
}
