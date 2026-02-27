import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';

/// Use this data source to get a list of members in an Identity Store Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}
