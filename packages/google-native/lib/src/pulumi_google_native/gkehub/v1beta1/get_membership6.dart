import 'package:pulumi/pulumi.dart';
import 'get_membership_args6.dart';
import 'get_membership_result6.dart';

/// Gets the details of a Membership.
Future<GetMembershipResult6> getMembership6(
  GetMembershipArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta1:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult6.fromMap(result);
}
