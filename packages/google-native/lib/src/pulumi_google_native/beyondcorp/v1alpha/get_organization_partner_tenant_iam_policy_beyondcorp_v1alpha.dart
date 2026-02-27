import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaResult>
    getOrganizationPartnerTenantIamPolicyBeyondcorpV1alpha(
  GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaResult.fromMap(
      result);
}
