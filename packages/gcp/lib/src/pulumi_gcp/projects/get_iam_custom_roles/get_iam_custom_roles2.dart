import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_roles_args2.dart';
import 'get_iam_custom_roles_result2.dart';

/// Get information about Google Cloud IAM Custom Roles from a project.
/// Note that you must have the `roles/iam.roleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.roles/list).
Future<GetIamCustomRolesResult2> getIamCustomRoles2(
  GetIamCustomRolesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult2.fromMap(result);
}
