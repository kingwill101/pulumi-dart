import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_tcp_proxy_args.dart';
import 'get_region_target_tcp_proxy_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetRegionTargetTcpProxyResult> getRegionTargetTcpProxy(
  GetRegionTargetTcpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyResult.fromMap(result);
}
