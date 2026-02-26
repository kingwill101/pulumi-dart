import 'package:pulumi/pulumi.dart';
import 'get_project_iam_policy_args.dart';
import 'get_project_iam_policy_result.dart';

/// Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. Authorization requires the Google IAM permission `resourcemanager.projects.getIamPolicy` on the project. For additional information about `resource` (e.g. my-project-id) structure and identification, see [Resource Names](https://cloud.google.com/apis/design/resource_names).
Future<GetProjectIamPolicyResult> getProjectIamPolicy(
  GetProjectIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getProjectIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyResult.fromMap(result);
}
