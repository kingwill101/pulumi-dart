import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_policy_compute_beta_args.dart';
import 'get_ssl_policy_compute_beta_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetSslPolicyComputeBetaResult> getSslPolicyComputeBeta(
  GetSslPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyComputeBetaResult.fromMap(result);
}
