import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_tcp_proxy_args3.dart';
import 'get_target_tcp_proxy_result3.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetTargetTcpProxyResult3> getTargetTcpProxy3(
  GetTargetTcpProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetTcpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyResult3.fromMap(result);
}
