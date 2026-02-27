import 'package:pulumi/pulumi.dart';
import 'get_group_transitive_memberships_args.dart';
import 'get_group_transitive_memberships_result.dart';

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group. Whereas `gcp.cloudidentity.getGroupMemberships` returns details of only direct members of the group, `gcp.cloudidentity.getGroupTransitiveMemberships` will return details about both direct and indirect members. For example, a user is an indirect member of Group A if the user is a direct member of Group B and Group B is a direct member of Group A.
///
/// To get more information about TransitiveGroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/searchTransitiveMemberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
Future<GetGroupTransitiveMembershipsResult> getGroupTransitiveMemberships(
  GetGroupTransitiveMembershipsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupTransitiveMemberships:getGroupTransitiveMemberships',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupTransitiveMembershipsResult.fromMap(result);
}
