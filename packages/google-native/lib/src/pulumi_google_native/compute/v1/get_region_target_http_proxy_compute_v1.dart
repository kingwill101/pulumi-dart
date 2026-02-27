import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_http_proxy_compute_v1_args.dart';
import 'get_region_target_http_proxy_compute_v1_result.dart';

/// Returns the specified TargetHttpProxy resource in the specified region.
Future<GetRegionTargetHttpProxyComputeV1Result>
    getRegionTargetHttpProxyComputeV1(
  GetRegionTargetHttpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyComputeV1Result.fromMap(result);
}
