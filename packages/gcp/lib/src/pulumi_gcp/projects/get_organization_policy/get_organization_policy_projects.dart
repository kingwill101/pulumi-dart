import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_projects_args.dart';
import 'get_organization_policy_projects_result.dart';

/// Allows management of Organization policies for a Google Project. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
Future<GetOrganizationPolicyProjectsResult> getOrganizationPolicyProjects(
  GetOrganizationPolicyProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyProjectsResult.fromMap(result);
}
