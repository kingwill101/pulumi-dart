import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_gkehub_v1beta_args.dart';
import 'get_membership_gkehub_v1beta_result.dart';

/// Gets the details of a Membership.
Future<GetMembershipGkehubV1betaResult> getMembershipGkehubV1beta(
  GetMembershipGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1betaResult.fromMap(result);
}
