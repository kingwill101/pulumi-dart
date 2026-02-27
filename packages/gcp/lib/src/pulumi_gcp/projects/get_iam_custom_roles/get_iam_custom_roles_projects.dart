import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_custom_roles_projects_args.dart';
import 'get_iam_custom_roles_projects_result.dart';

/// Get information about Google Cloud IAM Custom Roles from a project.
/// Note that you must have the `roles/iam.roleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.roles/list).
Future<GetIamCustomRolesProjectsResult> getIamCustomRolesProjects(
  GetIamCustomRolesProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesProjectsResult.fromMap(result);
}
