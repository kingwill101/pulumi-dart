import 'package:pulumi/pulumi.dart';
import 'get_membership_args2.dart';
import 'get_membership_result2.dart';

/// Retrieves a `Membership`.
Future<GetMembershipResult2> getMembership2(
  GetMembershipArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult2.fromMap(result);
}
