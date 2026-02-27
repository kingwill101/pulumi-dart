import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_account_iam_policy_args.dart';
import 'get_service_account_iam_policy_result.dart';

/// Gets the IAM policy that is attached to a ServiceAccount. This IAM policy specifies which principals have access to the service account. This method does not tell you whether the service account has been granted any roles on other resources. To check whether a service account has role grants on a resource, use the `getIamPolicy` method for that resource. For example, to view the role grants for a project, call the Resource Manager API's [`projects.getIamPolicy`](https://cloud.google.com/resource-manager/reference/rest/v1/projects/getIamPolicy) method.
Future<GetServiceAccountIamPolicyResult> getServiceAccountIamPolicy(
  GetServiceAccountIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getServiceAccountIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountIamPolicyResult.fromMap(result);
}
