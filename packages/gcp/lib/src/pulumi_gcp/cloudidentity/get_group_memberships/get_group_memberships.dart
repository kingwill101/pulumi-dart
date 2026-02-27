import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group.
///
/// https://cloud.google.com/identity/docs/concepts/overview#memberships
///
/// To get more information about GroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}
