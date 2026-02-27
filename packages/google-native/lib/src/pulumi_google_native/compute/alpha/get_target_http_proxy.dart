import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_http_proxy_args.dart';
import 'get_target_http_proxy_result.dart';

/// Returns the specified TargetHttpProxy resource.
Future<GetTargetHttpProxyResult> getTargetHttpProxy(
  GetTargetHttpProxyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetHttpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyResult.fromMap(result);
}
