import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_environment_iam_policy_args.dart';
import 'get_organization_environment_iam_policy_result.dart';

/// Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.getIamPolicy` permission to call this API.
Future<GetOrganizationEnvironmentIamPolicyResult>
    getOrganizationEnvironmentIamPolicy(
  GetOrganizationEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganizationEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEnvironmentIamPolicyResult.fromMap(result);
}
