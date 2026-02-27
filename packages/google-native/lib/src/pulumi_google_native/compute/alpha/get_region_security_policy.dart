import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}
