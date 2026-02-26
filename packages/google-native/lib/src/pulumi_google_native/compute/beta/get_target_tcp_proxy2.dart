import 'package:pulumi/pulumi.dart';
import 'get_target_tcp_proxy_args2.dart';
import 'get_target_tcp_proxy_result2.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetTargetTcpProxyResult2> getTargetTcpProxy2(
  GetTargetTcpProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetTcpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyResult2.fromMap(result);
}
