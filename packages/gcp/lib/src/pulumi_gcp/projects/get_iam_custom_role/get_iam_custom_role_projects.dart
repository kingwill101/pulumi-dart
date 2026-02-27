import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_custom_role_projects_args.dart';
import 'get_iam_custom_role_projects_result.dart';

/// Get information about a Google Cloud Project IAM Custom Role. Note that you must have the `roles/iam.roleViewer` role (or equivalent permissions) at the project level to use this datasource.
Future<GetIamCustomRoleProjectsResult> getIamCustomRoleProjects(
  GetIamCustomRoleProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleProjectsResult.fromMap(result);
}
