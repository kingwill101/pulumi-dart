import 'package:pulumi/pulumi.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';

/// Data source for managing an AWS SSO Identity Store Groups.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroups:getGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}
