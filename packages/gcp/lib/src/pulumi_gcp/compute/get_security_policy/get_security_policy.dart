import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_args.dart';
import 'get_security_policy_result.dart';

/// To get more information about Google Compute Security Policy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/securityPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/configure-security-policies)
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSecurityPolicy:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}
