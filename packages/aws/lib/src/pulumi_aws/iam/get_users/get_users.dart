import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_args.dart';
import 'get_users_result.dart';

/// Use this data source to get the ARNs and Names of IAM Users.
///
/// ## Example Usage
///
/// ### All users in an account
///
///
///
/// ### Users filtered by name regex
///
/// Users whose username contains `abc`
///
///
///
/// ### Users filtered by path prefix
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
