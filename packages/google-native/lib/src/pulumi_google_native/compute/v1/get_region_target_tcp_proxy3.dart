import 'package:pulumi/pulumi.dart';
import 'get_region_target_tcp_proxy_args3.dart';
import 'get_region_target_tcp_proxy_result3.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetRegionTargetTcpProxyResult3> getRegionTargetTcpProxy3(
  GetRegionTargetTcpProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetTcpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyResult3.fromMap(result);
}
