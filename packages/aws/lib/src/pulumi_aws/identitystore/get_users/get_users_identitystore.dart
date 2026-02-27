import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_identitystore_args.dart';
import 'get_users_identitystore_result.dart';

/// Use this data source to get a list of users in an Identity Store instance.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetUsersIdentitystoreResult> getUsersIdentitystore(
  GetUsersIdentitystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersIdentitystoreResult.fromMap(result);
}
