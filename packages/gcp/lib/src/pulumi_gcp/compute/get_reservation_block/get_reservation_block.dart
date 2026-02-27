import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_block_args.dart';
import 'get_reservation_block_result.dart';

/// Get information about a Google Compute Engine Reservation Block. Reservation blocks are automatically created by Google Cloud within reservations and represent a physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationBlocks).
Future<GetReservationBlockResult> getReservationBlock(
  GetReservationBlockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationBlock:getReservationBlock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationBlockResult.fromMap(result);
}
