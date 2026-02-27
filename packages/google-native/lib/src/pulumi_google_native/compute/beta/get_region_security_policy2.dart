import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_security_policy_args2.dart';
import 'get_region_security_policy_result2.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyResult2> getRegionSecurityPolicy2(
  GetRegionSecurityPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult2.fromMap(result);
}
