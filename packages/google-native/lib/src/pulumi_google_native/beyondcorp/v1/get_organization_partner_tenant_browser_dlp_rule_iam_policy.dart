import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_args.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult>
    getOrganizationPartnerTenantBrowserDlpRuleIamPolicy(
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getOrganizationPartnerTenantBrowserDlpRuleIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult.fromMap(
      result);
}
