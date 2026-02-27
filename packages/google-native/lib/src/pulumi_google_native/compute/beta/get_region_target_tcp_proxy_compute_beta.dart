import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_tcp_proxy_compute_beta_args.dart';
import 'get_region_target_tcp_proxy_compute_beta_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetRegionTargetTcpProxyComputeBetaResult>
    getRegionTargetTcpProxyComputeBeta(
  GetRegionTargetTcpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyComputeBetaResult.fromMap(result);
}
