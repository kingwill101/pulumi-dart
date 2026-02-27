import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_projects_args.dart';
import 'get_iam_policy_projects_result.dart';

/// Retrieves the current IAM policy data for a project.
///
/// ## example
Future<GetIamPolicyProjectsResult> getIamPolicyProjects(
  GetIamPolicyProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyProjectsResult.fromMap(result);
}
