import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_source_iam_policy_args2.dart';
import 'get_organization_source_iam_policy_result2.dart';

/// Gets the access control policy on the specified Source.
Future<GetOrganizationSourceIamPolicyResult2> getOrganizationSourceIamPolicy2(
  GetOrganizationSourceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicyResult2.fromMap(result);
}
