import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_iam_policy_cloudresourcemanager_v1beta1_args.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v1beta1_result.dart';

/// Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. "organizations/123".
Future<GetOrganizationIamPolicyCloudresourcemanagerV1beta1Result>
    getOrganizationIamPolicyCloudresourcemanagerV1beta1(
  GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getOrganizationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyCloudresourcemanagerV1beta1Result.fromMap(
      result);
}
