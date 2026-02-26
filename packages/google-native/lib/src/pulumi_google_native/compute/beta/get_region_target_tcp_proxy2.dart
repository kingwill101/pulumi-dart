import 'package:pulumi/pulumi.dart';
import 'get_region_target_tcp_proxy_args2.dart';
import 'get_region_target_tcp_proxy_result2.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetRegionTargetTcpProxyResult2> getRegionTargetTcpProxy2(
  GetRegionTargetTcpProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetTcpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyResult2.fromMap(result);
}
