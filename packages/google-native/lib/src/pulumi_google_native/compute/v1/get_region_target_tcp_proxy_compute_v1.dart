import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_tcp_proxy_compute_v1_args.dart';
import 'get_region_target_tcp_proxy_compute_v1_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetRegionTargetTcpProxyComputeV1Result> getRegionTargetTcpProxyComputeV1(
  GetRegionTargetTcpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyComputeV1Result.fromMap(result);
}
