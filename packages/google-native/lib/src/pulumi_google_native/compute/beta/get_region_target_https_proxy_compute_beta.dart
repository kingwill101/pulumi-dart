import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_https_proxy_compute_beta_args.dart';
import 'get_region_target_https_proxy_compute_beta_result.dart';

/// Returns the specified TargetHttpsProxy resource in the specified region.
Future<GetRegionTargetHttpsProxyComputeBetaResult>
    getRegionTargetHttpsProxyComputeBeta(
  GetRegionTargetHttpsProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyComputeBetaResult.fromMap(result);
}
