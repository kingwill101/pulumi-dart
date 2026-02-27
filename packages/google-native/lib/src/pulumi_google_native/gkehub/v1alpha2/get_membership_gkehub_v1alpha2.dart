import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_gkehub_v1alpha2_args.dart';
import 'get_membership_gkehub_v1alpha2_result.dart';

/// Gets the details of a Membership.
Future<GetMembershipGkehubV1alpha2Result> getMembershipGkehubV1alpha2(
  GetMembershipGkehubV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1alpha2Result.fromMap(result);
}
