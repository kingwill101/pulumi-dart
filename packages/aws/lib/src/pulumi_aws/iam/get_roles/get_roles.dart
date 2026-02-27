import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_roles_args.dart';
import 'get_roles_result.dart';

/// Use this data source to get the ARNs and Names of IAM Roles.
///
/// ## Example Usage
///
/// ### All roles in an account
///
///
///
/// ### Roles filtered by name regex
///
/// Roles whose role-name contains `project`
///
///
///
/// ### Roles filtered by path prefix
///
///
///
/// ### Roles provisioned by AWS SSO
///
/// Roles in the account filtered by path prefix
///
///
///
/// Specific role in the account filtered by name regex and path prefix
Future<GetRolesResult> getRoles(
  GetRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRoles:getRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolesResult.fromMap(result);
}
