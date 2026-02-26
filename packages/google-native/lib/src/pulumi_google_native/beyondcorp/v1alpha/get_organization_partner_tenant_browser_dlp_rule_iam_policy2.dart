import 'package:pulumi/pulumi.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_args2.dart';
import 'get_organization_partner_tenant_browser_dlp_rule_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult2>
    getOrganizationPartnerTenantBrowserDlpRuleIamPolicy2(
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantBrowserDlpRuleIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyResult2.fromMap(
      result);
}
