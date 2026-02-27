import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_https_proxy_compute_v1_args.dart';
import 'get_region_target_https_proxy_compute_v1_result.dart';

/// Returns the specified TargetHttpsProxy resource in the specified region.
Future<GetRegionTargetHttpsProxyComputeV1Result>
    getRegionTargetHttpsProxyComputeV1(
  GetRegionTargetHttpsProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyComputeV1Result.fromMap(result);
}
