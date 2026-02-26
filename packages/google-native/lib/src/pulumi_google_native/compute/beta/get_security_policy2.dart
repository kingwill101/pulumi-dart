import 'package:pulumi/pulumi.dart';
import 'get_security_policy_args2.dart';
import 'get_security_policy_result2.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetSecurityPolicyResult2> getSecurityPolicy2(
  GetSecurityPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult2.fromMap(result);
}
