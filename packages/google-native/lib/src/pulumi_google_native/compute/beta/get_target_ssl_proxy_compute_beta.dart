import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_ssl_proxy_compute_beta_args.dart';
import 'get_target_ssl_proxy_compute_beta_result.dart';

/// Returns the specified TargetSslProxy resource.
Future<GetTargetSslProxyComputeBetaResult> getTargetSslProxyComputeBeta(
  GetTargetSslProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetSslProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyComputeBetaResult.fromMap(result);
}
