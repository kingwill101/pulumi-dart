import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_source_iam_policy_securitycenter_v1beta1_args.dart';
import 'get_organization_source_iam_policy_securitycenter_v1beta1_result.dart';

/// Gets the access control policy on the specified Source.
Future<GetOrganizationSourceIamPolicySecuritycenterV1beta1Result>
    getOrganizationSourceIamPolicySecuritycenterV1beta1(
  GetOrganizationSourceIamPolicySecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicySecuritycenterV1beta1Result.fromMap(
      result);
}
