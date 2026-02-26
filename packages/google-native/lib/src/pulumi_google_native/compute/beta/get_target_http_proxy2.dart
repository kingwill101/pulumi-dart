import 'package:pulumi/pulumi.dart';
import 'get_target_http_proxy_args2.dart';
import 'get_target_http_proxy_result2.dart';

/// Returns the specified TargetHttpProxy resource.
Future<GetTargetHttpProxyResult2> getTargetHttpProxy2(
  GetTargetHttpProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyResult2.fromMap(result);
}
