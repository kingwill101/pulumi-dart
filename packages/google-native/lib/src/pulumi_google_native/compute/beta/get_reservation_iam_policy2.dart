import 'package:pulumi/pulumi.dart';
import 'get_reservation_iam_policy_args2.dart';
import 'get_reservation_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetReservationIamPolicyResult2> getReservationIamPolicy2(
  GetReservationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationIamPolicyResult2.fromMap(result);
}
