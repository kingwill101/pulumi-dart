import 'package:pulumi/pulumi.dart';
import 'get_organization_security_policy_args2.dart';
import 'get_organization_security_policy_result2.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetOrganizationSecurityPolicyResult2> getOrganizationSecurityPolicy2(
  GetOrganizationSecurityPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getOrganizationSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityPolicyResult2.fromMap(result);
}
