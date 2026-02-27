import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_organization_source_iam_policy_args.dart';
import 'get_v2_organization_source_iam_policy_result.dart';

/// Retrieves the current IAM policy data for organizationsource
Future<GetV2OrganizationSourceIamPolicyResult> getV2OrganizationSourceIamPolicy(
  GetV2OrganizationSourceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securitycenter/getV2OrganizationSourceIamPolicy:getV2OrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV2OrganizationSourceIamPolicyResult.fromMap(result);
}
