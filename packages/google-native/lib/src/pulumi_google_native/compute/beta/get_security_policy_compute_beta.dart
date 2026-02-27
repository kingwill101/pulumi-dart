import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_compute_beta_args.dart';
import 'get_security_policy_compute_beta_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetSecurityPolicyComputeBetaResult> getSecurityPolicyComputeBeta(
  GetSecurityPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyComputeBetaResult.fromMap(result);
}
