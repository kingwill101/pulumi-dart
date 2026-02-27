import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_args.dart';
import 'get_groups_result.dart';

/// Data source for managing an AWS SSO Identity Store Groups.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}
