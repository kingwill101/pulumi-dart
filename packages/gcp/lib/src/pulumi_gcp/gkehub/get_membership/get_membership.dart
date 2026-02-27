import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_args.dart';
import 'get_membership_result.dart';

/// Retrieves the details of a specific GKE Hub Membership. Use this data source to retrieve the membership's configuration and state.
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembership:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}
