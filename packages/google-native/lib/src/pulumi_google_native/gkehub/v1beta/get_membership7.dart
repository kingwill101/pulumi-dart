import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_args7.dart';
import 'get_membership_result7.dart';

/// Gets the details of a Membership.
Future<GetMembershipResult7> getMembership7(
  GetMembershipArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult7.fromMap(result);
}
