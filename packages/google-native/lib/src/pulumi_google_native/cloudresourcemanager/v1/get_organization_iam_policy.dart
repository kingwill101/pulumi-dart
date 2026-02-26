import 'package:pulumi/pulumi.dart';
import 'get_organization_iam_policy_args.dart';
import 'get_organization_iam_policy_result.dart';

/// Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. "organizations/123". Authorization requires the Google IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization
Future<GetOrganizationIamPolicyResult> getOrganizationIamPolicy(
  GetOrganizationIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getOrganizationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyResult.fromMap(result);
}
