import 'package:pulumi/pulumi.dart';
import 'get_target_ssl_proxy_args2.dart';
import 'get_target_ssl_proxy_result2.dart';

/// Returns the specified TargetSslProxy resource.
Future<GetTargetSslProxyResult2> getTargetSslProxy2(
  GetTargetSslProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetSslProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyResult2.fromMap(result);
}
