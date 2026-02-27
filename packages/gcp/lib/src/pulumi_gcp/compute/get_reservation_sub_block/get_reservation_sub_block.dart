import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_sub_block_args.dart';
import 'get_reservation_sub_block_result.dart';

/// Get information about a Google Compute Engine Reservation Sub-Block. Reservation sub-blocks are automatically created by Google Cloud within reservation blocks and represent a finer-grained physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationSubBlocks).
Future<GetReservationSubBlockResult> getReservationSubBlock(
  GetReservationSubBlockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationSubBlock:getReservationSubBlock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationSubBlockResult.fromMap(result);
}
