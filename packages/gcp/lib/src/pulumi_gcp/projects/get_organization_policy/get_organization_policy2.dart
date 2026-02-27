import 'package:pulumi/pulumi.dart';
import 'get_organization_policy_args2.dart';
import 'get_organization_policy_result2.dart';

/// Allows management of Organization policies for a Google Project. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
Future<GetOrganizationPolicyResult2> getOrganizationPolicy2(
  GetOrganizationPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult2.fromMap(result);
}
