import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v3_result.dart';

/// Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, for example: "organizations/123". Authorization requires the IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization.
Future<GetOrganizationIamPolicyCloudresourcemanagerV3Result>
    getOrganizationIamPolicyCloudresourcemanagerV3(
  GetOrganizationIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getOrganizationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}
