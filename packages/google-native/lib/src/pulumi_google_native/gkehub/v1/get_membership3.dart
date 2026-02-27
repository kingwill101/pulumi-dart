import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_args3.dart';
import 'get_membership_result3.dart';

/// Gets the details of a Membership.
Future<GetMembershipResult3> getMembership3(
  GetMembershipArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult3.fromMap(result);
}
