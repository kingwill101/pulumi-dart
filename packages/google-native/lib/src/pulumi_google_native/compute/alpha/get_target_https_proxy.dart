import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_https_proxy_args.dart';
import 'get_target_https_proxy_result.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyResult> getTargetHttpsProxy(
  GetTargetHttpsProxyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult.fromMap(result);
}
