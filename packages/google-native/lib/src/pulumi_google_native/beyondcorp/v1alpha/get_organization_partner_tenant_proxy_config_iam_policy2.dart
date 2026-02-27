import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_partner_tenant_proxy_config_iam_policy_args2.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantProxyConfigIamPolicyResult2>
    getOrganizationPartnerTenantProxyConfigIamPolicy2(
  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantProxyConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantProxyConfigIamPolicyResult2.fromMap(
      result);
}
