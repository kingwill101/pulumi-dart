import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_tcp_proxy_compute_beta_args.dart';
import 'get_target_tcp_proxy_compute_beta_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetTargetTcpProxyComputeBetaResult> getTargetTcpProxyComputeBeta(
  GetTargetTcpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyComputeBetaResult.fromMap(result);
}
