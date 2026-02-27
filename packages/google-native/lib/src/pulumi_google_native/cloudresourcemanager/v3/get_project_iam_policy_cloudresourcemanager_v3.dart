import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_project_iam_policy_cloudresourcemanager_v3_result.dart';

/// Returns the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. Permission is denied if the policy or the resource do not exist.
Future<GetProjectIamPolicyCloudresourcemanagerV3Result>
    getProjectIamPolicyCloudresourcemanagerV3(
  GetProjectIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}
