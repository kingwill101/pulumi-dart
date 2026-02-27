import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_gkehub_v1_args.dart';
import 'get_membership_gkehub_v1_result.dart';

/// Gets the details of a Membership.
Future<GetMembershipGkehubV1Result> getMembershipGkehubV1(
  GetMembershipGkehubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1Result.fromMap(result);
}
