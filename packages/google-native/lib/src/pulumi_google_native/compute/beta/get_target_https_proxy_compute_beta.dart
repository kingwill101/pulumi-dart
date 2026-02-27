import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_https_proxy_compute_beta_args.dart';
import 'get_target_https_proxy_compute_beta_result.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyComputeBetaResult> getTargetHttpsProxyComputeBeta(
  GetTargetHttpsProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyComputeBetaResult.fromMap(result);
}
