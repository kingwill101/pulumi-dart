import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_roles_args.dart';
import 'get_iam_custom_roles_result.dart';

/// Get information about a Google Cloud Organization IAM Custom Roles.
/// Note that you must have the `roles/iam.organizationRoleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/organizations.roles/list).
Future<GetIamCustomRolesResult> getIamCustomRoles(
  GetIamCustomRolesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult.fromMap(result);
}
