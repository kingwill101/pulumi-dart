import 'package:pulumi/pulumi.dart';
import 'get_membership_args5.dart';
import 'get_membership_result5.dart';

/// Gets the details of a Membership.
Future<GetMembershipResult5> getMembership5(
  GetMembershipArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult5.fromMap(result);
}
