import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantProxyConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaResult
      .fromMap(result);
}
