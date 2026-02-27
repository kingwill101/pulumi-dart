import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_http_proxy_compute_beta_args.dart';
import 'get_target_http_proxy_compute_beta_result.dart';

/// Returns the specified TargetHttpProxy resource.
Future<GetTargetHttpProxyComputeBetaResult> getTargetHttpProxyComputeBeta(
  GetTargetHttpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyComputeBetaResult.fromMap(result);
}
