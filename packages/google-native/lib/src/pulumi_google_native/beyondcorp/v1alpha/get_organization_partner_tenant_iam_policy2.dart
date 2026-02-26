import 'package:pulumi/pulumi.dart';
import 'get_organization_partner_tenant_iam_policy_args2.dart';
import 'get_organization_partner_tenant_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetOrganizationPartnerTenantIamPolicyResult2>
    getOrganizationPartnerTenantIamPolicy2(
  GetOrganizationPartnerTenantIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getOrganizationPartnerTenantIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPartnerTenantIamPolicyResult2.fromMap(result);
}
