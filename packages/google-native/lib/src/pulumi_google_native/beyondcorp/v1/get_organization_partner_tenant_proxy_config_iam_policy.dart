import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_partner_tenant_proxy_config_iam_policy_args.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantProxyConfigIamPolicyResult>
    getOrganizationPartnerTenantProxyConfigIamPolicy(
  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getOrganizationPartnerTenantProxyConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantProxyConfigIamPolicyResult.fromMap(result);
}
