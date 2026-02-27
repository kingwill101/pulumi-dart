import 'package:pulumi/pulumi.dart';
import 'get_users_args2.dart';
import 'get_users_result2.dart';

/// Use this data source to get a list of users in an Identity Store instance.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetUsersResult2> getUsers2(
  GetUsersArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUsers:getUsers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUsersResult2.fromMap(result);
}
