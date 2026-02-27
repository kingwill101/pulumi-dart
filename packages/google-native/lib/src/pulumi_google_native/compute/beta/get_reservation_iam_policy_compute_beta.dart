import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_iam_policy_compute_beta_args.dart';
import 'get_reservation_iam_policy_compute_beta_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetReservationIamPolicyComputeBetaResult>
    getReservationIamPolicyComputeBeta(
  GetReservationIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationIamPolicyComputeBetaResult.fromMap(result);
}
