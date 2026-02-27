import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';

/// Allows management of Organization policies for a Google Folder. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}
