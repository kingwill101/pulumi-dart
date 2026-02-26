import 'package:pulumi/pulumi.dart';
import 'get_organization_security_policy_args.dart';
import 'get_organization_security_policy_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetOrganizationSecurityPolicyResult> getOrganizationSecurityPolicy(
  GetOrganizationSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getOrganizationSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityPolicyResult.fromMap(result);
}
