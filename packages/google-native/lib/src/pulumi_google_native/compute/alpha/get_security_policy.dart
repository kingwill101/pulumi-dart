import 'package:pulumi/pulumi.dart';
import 'get_security_policy_args.dart';
import 'get_security_policy_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}
