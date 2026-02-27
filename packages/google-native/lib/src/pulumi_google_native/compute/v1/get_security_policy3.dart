import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_policy_args3.dart';
import 'get_security_policy_result3.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetSecurityPolicyResult3> getSecurityPolicy3(
  GetSecurityPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult3.fromMap(result);
}
