import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_bigqueryreservation_v1beta1_args.dart';
import 'get_reservation_bigqueryreservation_v1beta1_result.dart';

/// Returns information about the reservation.
Future<GetReservationBigqueryreservationV1beta1Result>
    getReservationBigqueryreservationV1beta1(
  GetReservationBigqueryreservationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationBigqueryreservationV1beta1Result.fromMap(result);
}
