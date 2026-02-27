import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_iam_policy_args3.dart';
import 'get_organization_iam_policy_result3.dart';

/// Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, for example: "organizations/123". Authorization requires the IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization.
Future<GetOrganizationIamPolicyResult3> getOrganizationIamPolicy3(
  GetOrganizationIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getOrganizationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyResult3.fromMap(result);
}
