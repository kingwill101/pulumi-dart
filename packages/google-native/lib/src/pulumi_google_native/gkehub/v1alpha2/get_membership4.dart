import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_args4.dart';
import 'get_membership_result4.dart';

/// Gets the details of a Membership.
Future<GetMembershipResult4> getMembership4(
  GetMembershipArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult4.fromMap(result);
}
