import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs
      args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantBrowserDlpRuleIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaResult
      .fromMap(result);
}
