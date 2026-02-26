import 'package:pulumi/pulumi.dart';
import 'get_organization_source_iam_policy_args.dart';
import 'get_organization_source_iam_policy_result.dart';

/// Gets the access control policy on the specified Source.
Future<GetOrganizationSourceIamPolicyResult> getOrganizationSourceIamPolicy(
  GetOrganizationSourceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicyResult.fromMap(result);
}
