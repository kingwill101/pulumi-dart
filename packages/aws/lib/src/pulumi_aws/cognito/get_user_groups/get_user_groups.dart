import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_args.dart';
import 'get_user_groups_result.dart';

/// Data source for managing AWS Cognito IDP (Identity Provider) User Groups.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetUserGroupsResult> getUserGroups(
  GetUserGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserGroups:getUserGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserGroupsResult.fromMap(result);
}
