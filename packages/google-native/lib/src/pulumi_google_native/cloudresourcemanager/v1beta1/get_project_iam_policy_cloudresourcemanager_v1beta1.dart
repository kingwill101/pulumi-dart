import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_iam_policy_cloudresourcemanager_v1beta1_args.dart';
import 'get_project_iam_policy_cloudresourcemanager_v1beta1_result.dart';

/// Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. For additional information about resource structure and identification, see [Resource Names](/apis/design/resource_names).
Future<GetProjectIamPolicyCloudresourcemanagerV1beta1Result>
    getProjectIamPolicyCloudresourcemanagerV1beta1(
  GetProjectIamPolicyCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyCloudresourcemanagerV1beta1Result.fromMap(result);
}
