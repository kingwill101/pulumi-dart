import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_gkehub_v1alpha_args.dart';
import 'get_membership_gkehub_v1alpha_result.dart';

/// Gets the details of a Membership.
Future<GetMembershipGkehubV1alphaResult> getMembershipGkehubV1alpha(
  GetMembershipGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1alphaResult.fromMap(result);
}
