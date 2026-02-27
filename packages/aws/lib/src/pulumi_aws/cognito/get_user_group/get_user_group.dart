import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_args.dart';
import 'get_user_group_result.dart';

/// Data source for managing an AWS Cognito IDP (Identity Provider) User Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetUserGroupResult> getUserGroup(
  GetUserGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserGroup:getUserGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserGroupResult.fromMap(result);
}
