import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}
