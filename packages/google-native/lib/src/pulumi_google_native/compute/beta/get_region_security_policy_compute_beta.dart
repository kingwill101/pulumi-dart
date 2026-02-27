import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_compute_beta_args.dart';
import 'get_region_security_policy_compute_beta_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyComputeBetaResult>
    getRegionSecurityPolicyComputeBeta(
  GetRegionSecurityPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyComputeBetaResult.fromMap(result);
}
