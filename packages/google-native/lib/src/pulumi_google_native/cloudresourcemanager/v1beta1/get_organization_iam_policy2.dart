import 'package:pulumi/pulumi.dart';
import 'get_organization_iam_policy_args2.dart';
import 'get_organization_iam_policy_result2.dart';

/// Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. "organizations/123".
Future<GetOrganizationIamPolicyResult2> getOrganizationIamPolicy2(
  GetOrganizationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getOrganizationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyResult2.fromMap(result);
}
