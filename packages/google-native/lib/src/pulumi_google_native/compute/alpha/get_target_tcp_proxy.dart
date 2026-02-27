import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_tcp_proxy_args.dart';
import 'get_target_tcp_proxy_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetTargetTcpProxyResult> getTargetTcpProxy(
  GetTargetTcpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyResult.fromMap(result);
}
