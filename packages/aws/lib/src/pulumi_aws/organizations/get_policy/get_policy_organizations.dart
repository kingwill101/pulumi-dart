import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_organizations_args.dart';
import 'get_policy_organizations_result.dart';

/// Data source for managing an AWS Organizations Policy.
Future<GetPolicyOrganizationsResult> getPolicyOrganizations(
  GetPolicyOrganizationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyOrganizationsResult.fromMap(result);
}
