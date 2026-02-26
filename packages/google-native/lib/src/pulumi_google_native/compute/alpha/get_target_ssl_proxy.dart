import 'package:pulumi/pulumi.dart';
import 'get_target_ssl_proxy_args.dart';
import 'get_target_ssl_proxy_result.dart';

/// Returns the specified TargetSslProxy resource.
Future<GetTargetSslProxyResult> getTargetSslProxy(
  GetTargetSslProxyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetSslProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyResult.fromMap(result);
}
