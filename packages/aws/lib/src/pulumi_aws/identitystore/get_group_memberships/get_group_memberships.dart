import 'package:pulumi/pulumi.dart';
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';

/// Use this data source to get a list of members in an Identity Store Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}
